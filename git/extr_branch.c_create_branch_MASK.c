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
struct strbuf {char const* buf; } ;
struct repository {int dummy; } ;
struct ref_transaction {int dummy; } ;
struct object_id {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  oid; } ;
struct commit {TYPE_1__ object; } ;
typedef  enum branch_track { ____Placeholder_branch_track } branch_track ;

/* Variables and functions */
 int BRANCH_TRACK_EXPLICIT ; 
 int BRANCH_TRACK_OVERRIDE ; 
 int /*<<< orphan*/  LOG_REFS_NORMAL ; 
 struct strbuf STRBUF_INIT ; 
 char* FUNC0 (char*) ; 
 scalar_t__ advice_set_upstream_failure ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (char*,char const*) ; 
 int FUNC3 (char const*,int /*<<< orphan*/ ,struct object_id*,char**) ; 
 int /*<<< orphan*/  FUNC4 (char*,char const*) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 scalar_t__ FUNC7 (char const*,struct object_id*) ; 
 int /*<<< orphan*/  log_all_ref_updates ; 
 struct commit* FUNC8 (struct repository*,struct object_id*) ; 
 int /*<<< orphan*/  null_oid ; 
 int /*<<< orphan*/  FUNC9 (struct object_id*,int /*<<< orphan*/ *) ; 
 struct ref_transaction* FUNC10 (struct strbuf*) ; 
 scalar_t__ FUNC11 (struct ref_transaction*,struct strbuf*) ; 
 int /*<<< orphan*/  FUNC12 (struct ref_transaction*) ; 
 scalar_t__ FUNC13 (struct ref_transaction*,char const*,struct object_id*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,struct strbuf*) ; 
 int /*<<< orphan*/  FUNC14 (char const*,char*,int,int) ; 
 int /*<<< orphan*/  FUNC15 (char*,char*) ; 
 int /*<<< orphan*/  FUNC16 (struct strbuf*) ; 
 int /*<<< orphan*/  FUNC17 (char const*) ; 
 char* upstream_advice ; 
 char* upstream_missing ; 
 char* upstream_not_branch ; 
 scalar_t__ FUNC18 (char const*,struct strbuf*) ; 
 scalar_t__ FUNC19 (char const*,struct strbuf*,int) ; 
 int /*<<< orphan*/  FUNC20 (char*) ; 
 char* FUNC21 (char*,char const*) ; 

void FUNC22(struct repository *r,
		   const char *name, const char *start_name,
		   int force, int clobber_head_ok, int reflog,
		   int quiet, enum branch_track track)
{
	struct commit *commit;
	struct object_id oid;
	char *real_ref;
	struct strbuf ref = STRBUF_INIT;
	int forcing = 0;
	int dont_change_ref = 0;
	int explicit_tracking = 0;

	if (track == BRANCH_TRACK_EXPLICIT || track == BRANCH_TRACK_OVERRIDE)
		explicit_tracking = 1;

	if ((track == BRANCH_TRACK_OVERRIDE || clobber_head_ok)
	    ? FUNC18(name, &ref)
	    : FUNC19(name, &ref, force)) {
		if (!force)
			dont_change_ref = 1;
		else
			forcing = 1;
	}

	real_ref = NULL;
	if (FUNC7(start_name, &oid)) {
		if (explicit_tracking) {
			if (advice_set_upstream_failure) {
				FUNC4(FUNC0(upstream_missing), start_name);
				FUNC1(FUNC0(upstream_advice));
				FUNC5(1);
			}
			FUNC2(FUNC0(upstream_missing), start_name);
		}
		FUNC2(FUNC0("Not a valid object name: '%s'."), start_name);
	}

	switch (FUNC3(start_name, FUNC17(start_name), &oid, &real_ref)) {
	case 0:
		/* Not branching from any existing branch */
		if (explicit_tracking)
			FUNC2(FUNC0(upstream_not_branch), start_name);
		break;
	case 1:
		/* Unique completion -- good, only if it is a real branch */
		if (!FUNC15(real_ref, "refs/heads/") &&
		    FUNC20(real_ref)) {
			if (explicit_tracking)
				FUNC2(FUNC0(upstream_not_branch), start_name);
			else
				real_ref = NULL;
		}
		break;
	default:
		FUNC2(FUNC0("Ambiguous object name: '%s'."), start_name);
		break;
	}

	if ((commit = FUNC8(r, &oid)) == NULL)
		FUNC2(FUNC0("Not a valid branch point: '%s'."), start_name);
	FUNC9(&oid, &commit->object.oid);

	if (reflog)
		log_all_ref_updates = LOG_REFS_NORMAL;

	if (!dont_change_ref) {
		struct ref_transaction *transaction;
		struct strbuf err = STRBUF_INIT;
		char *msg;

		if (forcing)
			msg = FUNC21("branch: Reset to %s", start_name);
		else
			msg = FUNC21("branch: Created from %s", start_name);

		transaction = FUNC10(&err);
		if (!transaction ||
		    FUNC13(transaction, ref.buf,
					   &oid, forcing ? NULL : &null_oid,
					   0, msg, &err) ||
		    FUNC11(transaction, &err))
			FUNC2("%s", err.buf);
		FUNC12(transaction);
		FUNC16(&err);
		FUNC6(msg);
	}

	if (real_ref && track)
		FUNC14(ref.buf + 11, real_ref, track, quiet);

	FUNC16(&ref);
	FUNC6(real_ref);
}