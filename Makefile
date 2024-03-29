build:
	spago build

generate:
	spago run --main SampleApp.TsBridge.Main
	yarn run prettier --write output/*/index.d.ts

run:
	tsc
	node --no-warnings --experimental-specifier-resolution=node dist/index.js