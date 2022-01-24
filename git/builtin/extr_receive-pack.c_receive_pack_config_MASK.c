#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {scalar_t__ len; } ;

/* Variables and functions */
 void* advertise_atomic_push ; 
 void* advertise_push_options ; 
 void* auto_gc ; 
 void* auto_update_server_info ; 
 int /*<<< orphan*/  cert_nonce_seed ; 
 void* deny_current_branch ; 
 void* deny_delete_current ; 
 void* deny_deletes ; 
 void* deny_non_fast_forwards ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 TYPE_1__ fsck_msg_types ; 
 void* FUNC1 (char const*,char const*) ; 
 void* FUNC2 (char const*,char const*) ; 
 int /*<<< orphan*/  FUNC3 (char const*,char const*) ; 
 scalar_t__ FUNC4 (char const**,char const*,char const*) ; 
 int FUNC5 (int /*<<< orphan*/ *,char const*,char const*) ; 
 int /*<<< orphan*/  FUNC6 (char const*,char const*) ; 
 int FUNC7 (char const*,char const*,void*) ; 
 scalar_t__ FUNC8 (char const*,char const*) ; 
 void* keepalive_in_sec ; 
 int /*<<< orphan*/  max_input_size ; 
 int /*<<< orphan*/  nonce_stamp_slop_limit ; 
 void* FUNC9 (char const*,char const*) ; 
 int FUNC10 (char const*,char const*,char*) ; 
 void* prefer_ofs_delta ; 
 void* receive_fsck_objects ; 
 void* receive_unpack_limit ; 
 void* shallow_update ; 
 scalar_t__ FUNC11 (char const*,char*,char const**) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_1__*,char*,char,char const*,...) ; 
 scalar_t__ FUNC13 (char const*,char*) ; 
 void* transfer_fsck_objects ; 
 void* transfer_unpack_limit ; 
 int /*<<< orphan*/  FUNC14 (char*,char const*) ; 

__attribute__((used)) static int FUNC15(const char *var, const char *value, void *cb)
{
	int status = FUNC10(var, value, "receive");

	if (status)
		return status;

	if (FUNC13(var, "receive.denydeletes") == 0) {
		deny_deletes = FUNC1(var, value);
		return 0;
	}

	if (FUNC13(var, "receive.denynonfastforwards") == 0) {
		deny_non_fast_forwards = FUNC1(var, value);
		return 0;
	}

	if (FUNC13(var, "receive.unpacklimit") == 0) {
		receive_unpack_limit = FUNC2(var, value);
		return 0;
	}

	if (FUNC13(var, "transfer.unpacklimit") == 0) {
		transfer_unpack_limit = FUNC2(var, value);
		return 0;
	}

	if (FUNC13(var, "receive.fsck.skiplist") == 0) {
		const char *path;

		if (FUNC4(&path, var, value))
			return 1;
		FUNC12(&fsck_msg_types, "%cskiplist=%s",
			fsck_msg_types.len ? ',' : '=', path);
		FUNC0((char *)path);
		return 0;
	}

	if (FUNC11(var, "receive.fsck.", &var)) {
		if (FUNC8(var, value))
			FUNC12(&fsck_msg_types, "%c%s=%s",
				fsck_msg_types.len ? ',' : '=', var, value);
		else
			FUNC14("Skipping unknown msg id '%s'", var);
		return 0;
	}

	if (FUNC13(var, "receive.fsckobjects") == 0) {
		receive_fsck_objects = FUNC1(var, value);
		return 0;
	}

	if (FUNC13(var, "transfer.fsckobjects") == 0) {
		transfer_fsck_objects = FUNC1(var, value);
		return 0;
	}

	if (!FUNC13(var, "receive.denycurrentbranch")) {
		deny_current_branch = FUNC9(var, value);
		return 0;
	}

	if (FUNC13(var, "receive.denydeletecurrent") == 0) {
		deny_delete_current = FUNC9(var, value);
		return 0;
	}

	if (FUNC13(var, "repack.usedeltabaseoffset") == 0) {
		prefer_ofs_delta = FUNC1(var, value);
		return 0;
	}

	if (FUNC13(var, "receive.updateserverinfo") == 0) {
		auto_update_server_info = FUNC1(var, value);
		return 0;
	}

	if (FUNC13(var, "receive.autogc") == 0) {
		auto_gc = FUNC1(var, value);
		return 0;
	}

	if (FUNC13(var, "receive.shallowupdate") == 0) {
		shallow_update = FUNC1(var, value);
		return 0;
	}

	if (FUNC13(var, "receive.certnonceseed") == 0)
		return FUNC5(&cert_nonce_seed, var, value);

	if (FUNC13(var, "receive.certnonceslop") == 0) {
		nonce_stamp_slop_limit = FUNC6(var, value);
		return 0;
	}

	if (FUNC13(var, "receive.advertiseatomic") == 0) {
		advertise_atomic_push = FUNC1(var, value);
		return 0;
	}

	if (FUNC13(var, "receive.advertisepushoptions") == 0) {
		advertise_push_options = FUNC1(var, value);
		return 0;
	}

	if (FUNC13(var, "receive.keepalive") == 0) {
		keepalive_in_sec = FUNC2(var, value);
		return 0;
	}

	if (FUNC13(var, "receive.maxinputsize") == 0) {
		max_input_size = FUNC3(var, value);
		return 0;
	}

	return FUNC7(var, value, cb);
}