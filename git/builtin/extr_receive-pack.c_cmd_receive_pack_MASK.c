#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct string_list {int dummy; } ;
struct shallow_info {int /*<<< orphan*/  nr_theirs; int /*<<< orphan*/  nr_ours; } ;
struct packet_reader {int dummy; } ;
struct option {int dummy; } ;
struct oid_array {int dummy; } ;
struct command {char* error_string; struct command* next; } ;
struct child_process {int no_stdin; int stdout_to_stderr; int err; int git_cmd; char const** argv; } ;
struct TYPE_2__ {int /*<<< orphan*/  objects; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 struct child_process CHILD_PROCESS_INIT ; 
 int /*<<< orphan*/  KEEPALIVE_ALWAYS ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 struct oid_array OID_ARRAY_INIT ; 
 struct option FUNC2 () ; 
 struct option FUNC3 (int /*<<< orphan*/ ,char*,int*,int /*<<< orphan*/ *) ; 
 struct option FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int PACKET_READ_CHOMP_NEWLINE ; 
 int PACKET_READ_DIE_ON_ERR_PACKET ; 
 struct string_list STRING_LIST_INIT_DUP ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 scalar_t__ auto_gc ; 
 scalar_t__ auto_update_server_info ; 
 scalar_t__ cert_nonce_seed ; 
 int /*<<< orphan*/  FUNC6 (struct string_list*) ; 
 int /*<<< orphan*/  FUNC7 (struct shallow_info*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (struct command*) ; 
 int FUNC11 () ; 
 int /*<<< orphan*/  FUNC12 (char*,char const*) ; 
 int /*<<< orphan*/  FUNC13 (char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (struct command*,char const*,struct shallow_info*,struct string_list*) ; 
 int /*<<< orphan*/  FUNC15 (struct child_process*) ; 
 int /*<<< orphan*/  FUNC16 (void*) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC18 (struct oid_array*) ; 
 scalar_t__ pack_lockfile ; 
 int /*<<< orphan*/  FUNC19 (int) ; 
 int /*<<< orphan*/  FUNC20 (struct packet_reader*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC21 (char*) ; 
 int /*<<< orphan*/  FUNC22 (int,char*) ; 
 int FUNC23 (int,char const**,char const*,struct option*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC24 (char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC25 (struct shallow_info*,struct oid_array*) ; 
#define  protocol_unknown_version 131 
#define  protocol_v0 130 
#define  protocol_v1 129 
#define  protocol_v2 128 
 scalar_t__ push_cert_nonce ; 
 int /*<<< orphan*/  quiet ; 
 struct command* FUNC26 (struct packet_reader*,struct oid_array*) ; 
 int /*<<< orphan*/  FUNC27 (struct packet_reader*,struct string_list*) ; 
 int /*<<< orphan*/  receive_pack_config ; 
 int /*<<< orphan*/  receive_pack_usage ; 
 scalar_t__ receive_unpack_limit ; 
 int reject_thin ; 
 int /*<<< orphan*/  FUNC28 (struct command*,char const*) ; 
 scalar_t__ report_status ; 
 int /*<<< orphan*/  FUNC29 (struct command*,char*,int,struct string_list*) ; 
 int /*<<< orphan*/  FUNC30 (struct command*) ; 
 char const* service_dir ; 
 int /*<<< orphan*/  FUNC31 () ; 
 scalar_t__ shallow_update ; 
 int /*<<< orphan*/  FUNC32 (struct child_process*) ; 
 int stateless_rpc ; 
 int /*<<< orphan*/  FUNC33 (struct string_list*,int /*<<< orphan*/ ) ; 
 TYPE_1__* the_repository ; 
 int /*<<< orphan*/  FUNC34 (int /*<<< orphan*/ *) ; 
 scalar_t__ transfer_unpack_limit ; 
 int /*<<< orphan*/  FUNC35 (scalar_t__) ; 
 scalar_t__ unpack_limit ; 
 char* FUNC36 (struct shallow_info*) ; 
 int /*<<< orphan*/  FUNC37 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC38 (struct command*,struct shallow_info*,struct oid_array*) ; 
 int /*<<< orphan*/  FUNC39 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct option*) ; 
 int /*<<< orphan*/  use_keepalive ; 
 scalar_t__ use_push_options ; 
 scalar_t__ use_sideband ; 
 int /*<<< orphan*/  FUNC40 () ; 

int FUNC41(int argc, const char **argv, const char *prefix)
{
	int advertise_refs = 0;
	struct command *commands;
	struct oid_array shallow = OID_ARRAY_INIT;
	struct oid_array ref = OID_ARRAY_INIT;
	struct shallow_info si;
	struct packet_reader reader;

	struct option options[] = {
		FUNC4(&quiet, FUNC1("quiet")),
		FUNC3(0, "stateless-rpc", &stateless_rpc, NULL),
		FUNC3(0, "advertise-refs", &advertise_refs, NULL),
		FUNC3(0, "reject-thin-pack-for-testing", &reject_thin, NULL),
		FUNC2()
	};

	FUNC21("receive-pack");

	argc = FUNC23(argc, argv, prefix, options, receive_pack_usage, 0);

	if (argc > 1)
		FUNC39(FUNC5("Too many arguments."), receive_pack_usage, options);
	if (argc == 0)
		FUNC39(FUNC5("You must specify a directory."), receive_pack_usage, options);

	service_dir = argv[0];

	FUNC31();

	if (!FUNC13(service_dir, 0))
		FUNC12("'%s' does not appear to be a git repository", service_dir);

	FUNC17(receive_pack_config, NULL);
	if (cert_nonce_seed)
		push_cert_nonce = FUNC24(service_dir, FUNC34(NULL));

	if (0 <= transfer_unpack_limit)
		unpack_limit = transfer_unpack_limit;
	else if (0 <= receive_unpack_limit)
		unpack_limit = receive_unpack_limit;

	switch (FUNC11()) {
	case protocol_v2:
		/*
		 * push support for protocol v2 has not been implemented yet,
		 * so ignore the request to use v2 and fallback to using v0.
		 */
		break;
	case protocol_v1:
		/*
		 * v1 is just the original protocol with a version string,
		 * so just fall through after writing the version string.
		 */
		if (advertise_refs || !stateless_rpc)
			FUNC22(1, "version 1\n");

		/* fallthrough */
	case protocol_v0:
		break;
	case protocol_unknown_version:
		FUNC0("unknown protocol version");
	}

	if (advertise_refs || !stateless_rpc) {
		FUNC40();
	}
	if (advertise_refs)
		return 0;

	FUNC20(&reader, 0, NULL, 0,
			   PACKET_READ_CHOMP_NEWLINE |
			   PACKET_READ_DIE_ON_ERR_PACKET);

	if ((commands = FUNC26(&reader, &shallow)) != NULL) {
		const char *unpack_status = NULL;
		struct string_list push_options = STRING_LIST_INIT_DUP;

		if (use_push_options)
			FUNC27(&reader, &push_options);
		if (!FUNC6(&push_options)) {
			struct command *cmd;
			for (cmd = commands; cmd; cmd = cmd->next)
				cmd->error_string = "inconsistent push options";
		}

		FUNC25(&si, &shallow);
		if (!si.nr_ours && !si.nr_theirs)
			shallow_update = 0;
		if (!FUNC10(commands)) {
			unpack_status = FUNC36(&si);
			FUNC38(commands, &si, &ref);
		}
		use_keepalive = KEEPALIVE_ALWAYS;
		FUNC14(commands, unpack_status, &si,
				 &push_options);
		if (pack_lockfile)
			FUNC35(pack_lockfile);
		if (report_status)
			FUNC28(commands, unpack_status);
		FUNC29(commands, "post-receive", 1,
				 &push_options);
		FUNC30(commands);
		FUNC33(&push_options, 0);
		if (auto_gc) {
			const char *argv_gc_auto[] = {
				"gc", "--auto", "--quiet", NULL,
			};
			struct child_process proc = CHILD_PROCESS_INIT;

			proc.no_stdin = 1;
			proc.stdout_to_stderr = 1;
			proc.err = use_sideband ? -1 : 0;
			proc.git_cmd = 1;
			proc.argv = argv_gc_auto;

			FUNC8(the_repository->objects);
			if (!FUNC32(&proc)) {
				if (use_sideband)
					FUNC9(proc.err, -1, NULL);
				FUNC15(&proc);
			}
		}
		if (auto_update_server_info)
			FUNC37(0);
		FUNC7(&si);
	}
	if (use_sideband)
		FUNC19(1);
	FUNC18(&shallow);
	FUNC18(&ref);
	FUNC16((void *)push_cert_nonce);
	return 0;
}