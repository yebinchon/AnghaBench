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
struct object_id {int dummy; } ;
struct TYPE_2__ {int recno; int /*<<< orphan*/  expire_total; } ;
struct expire_reflog_policy_cb {TYPE_1__ cmd; } ;
typedef  int /*<<< orphan*/  cb ;

/* Variables and functions */
 unsigned int EXPIRE_REFLOGS_DRY_RUN ; 
 unsigned int EXPIRE_REFLOGS_REWRITE ; 
 unsigned int EXPIRE_REFLOGS_UPDATE_REF ; 
 unsigned int EXPIRE_REFLOGS_VERBOSE ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char const*) ; 
 int /*<<< orphan*/  count_reflog_ent ; 
 int /*<<< orphan*/  FUNC2 (char const*,int,struct object_id*,char**) ; 
 int FUNC3 (int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ,struct expire_reflog_policy_cb*) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 (struct expire_reflog_policy_cb*,int /*<<< orphan*/ ,int) ; 
 char* reflog_delete_usage ; 
 int FUNC7 (char*,struct object_id*,unsigned int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct expire_reflog_policy_cb*) ; 
 int /*<<< orphan*/  reflog_expiry_cleanup ; 
 int /*<<< orphan*/  reflog_expiry_prepare ; 
 int /*<<< orphan*/  should_expire_reflog_ent ; 
 int /*<<< orphan*/  FUNC8 (char const*,char*) ; 
 char* FUNC9 (char const*,char*) ; 
 int FUNC10 (char const*,char**,int) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC12(int argc, const char **argv, const char *prefix)
{
	struct expire_reflog_policy_cb cb;
	int i, status = 0;
	unsigned int flags = 0;

	FUNC6(&cb, 0, sizeof(cb));

	for (i = 1; i < argc; i++) {
		const char *arg = argv[i];
		if (!FUNC8(arg, "--dry-run") || !FUNC8(arg, "-n"))
			flags |= EXPIRE_REFLOGS_DRY_RUN;
		else if (!FUNC8(arg, "--rewrite"))
			flags |= EXPIRE_REFLOGS_REWRITE;
		else if (!FUNC8(arg, "--updateref"))
			flags |= EXPIRE_REFLOGS_UPDATE_REF;
		else if (!FUNC8(arg, "--verbose"))
			flags |= EXPIRE_REFLOGS_VERBOSE;
		else if (!FUNC8(arg, "--")) {
			i++;
			break;
		}
		else if (arg[0] == '-')
			FUNC11(FUNC0(reflog_delete_usage));
		else
			break;
	}

	if (argc - i < 1)
		return FUNC3(FUNC0("no reflog specified to delete"));

	for ( ; i < argc; i++) {
		const char *spec = FUNC9(argv[i], "@{");
		struct object_id oid;
		char *ep, *ref;
		int recno;

		if (!spec) {
			status |= FUNC3(FUNC0("not a reflog: %s"), argv[i]);
			continue;
		}

		if (!FUNC2(argv[i], spec - argv[i], &oid, &ref)) {
			status |= FUNC3(FUNC0("no reflog for '%s'"), argv[i]);
			continue;
		}

		recno = FUNC10(spec + 2, &ep, 10);
		if (*ep == '}') {
			cb.cmd.recno = -recno;
			FUNC4(ref, count_reflog_ent, &cb);
		} else {
			cb.cmd.expire_total = FUNC1(spec + 2);
			FUNC4(ref, count_reflog_ent, &cb);
			cb.cmd.expire_total = 0;
		}

		status |= FUNC7(ref, &oid, flags,
					reflog_expiry_prepare,
					should_expire_reflog_ent,
					reflog_expiry_cleanup,
					&cb);
		FUNC5(ref);
	}
	return status;
}