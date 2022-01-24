#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct upload_pack_options {int stateless_rpc; int advertise_refs; int daemon_mode; scalar_t__ timeout; int /*<<< orphan*/  member_0; } ;
struct serve_options {int advertise_capabilities; int stateless_rpc; } ;
struct option {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 struct option FUNC2 (int /*<<< orphan*/ ,char*,int*,int /*<<< orphan*/ ) ; 
 struct option FUNC3 () ; 
 struct option FUNC4 (int /*<<< orphan*/ ,char*,scalar_t__*,int /*<<< orphan*/ ) ; 
 struct serve_options SERVE_OPTIONS_INIT ; 
 int FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (char*,char const*) ; 
 int /*<<< orphan*/  FUNC7 (char const*,int) ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 
 int /*<<< orphan*/  FUNC9 (int,char*) ; 
 int FUNC10 (int,char const**,char const*,struct option*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
#define  protocol_unknown_version 131 
#define  protocol_v0 130 
#define  protocol_v1 129 
#define  protocol_v2 128 
 scalar_t__ read_replace_refs ; 
 int /*<<< orphan*/  FUNC11 (struct serve_options*) ; 
 int /*<<< orphan*/  FUNC12 () ; 
 int /*<<< orphan*/  FUNC13 (struct upload_pack_options*) ; 
 int /*<<< orphan*/  upload_pack_usage ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,struct option*) ; 

int FUNC15(int argc, const char **argv, const char *prefix)
{
	const char *dir;
	int strict = 0;
	struct upload_pack_options opts = { 0 };
	struct serve_options serve_opts = SERVE_OPTIONS_INIT;
	struct option options[] = {
		FUNC2(0, "stateless-rpc", &opts.stateless_rpc,
			 FUNC1("quit after a single request/response exchange")),
		FUNC2(0, "advertise-refs", &opts.advertise_refs,
			 FUNC1("exit immediately after initial ref advertisement")),
		FUNC2(0, "strict", &strict,
			 FUNC1("do not try <directory>/.git/ if <directory> is no Git directory")),
		FUNC4(0, "timeout", &opts.timeout,
			    FUNC1("interrupt transfer after <n> seconds of inactivity")),
		FUNC3()
	};

	FUNC8("upload-pack");
	read_replace_refs = 0;

	argc = FUNC10(argc, argv, prefix, options, upload_pack_usage, 0);

	if (argc != 1)
		FUNC14(upload_pack_usage, options);

	if (opts.timeout)
		opts.daemon_mode = 1;

	FUNC12();

	dir = argv[0];

	if (!FUNC7(dir, strict))
		FUNC6("'%s' does not appear to be a git repository", dir);

	switch (FUNC5()) {
	case protocol_v2:
		serve_opts.advertise_capabilities = opts.advertise_refs;
		serve_opts.stateless_rpc = opts.stateless_rpc;
		FUNC11(&serve_opts);
		break;
	case protocol_v1:
		/*
		 * v1 is just the original protocol with a version string,
		 * so just fall through after writing the version string.
		 */
		if (opts.advertise_refs || !opts.stateless_rpc)
			FUNC9(1, "version 1\n");

		/* fallthrough */
	case protocol_v0:
		FUNC13(&opts);
		break;
	case protocol_unknown_version:
		FUNC0("unknown protocol version");
	}

	return 0;
}