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
struct strbuf {char const* buf; } ;
struct ref_transaction {int dummy; } ;
struct option {int dummy; } ;
struct object_id {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 struct option FUNC1 (char,char*,int*,int /*<<< orphan*/ ) ; 
 struct option FUNC2 () ; 
 struct option FUNC3 (char,int /*<<< orphan*/ *,int /*<<< orphan*/ **,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int REF_FORCE_CREATE_REFLOG ; 
 int REF_NO_DEREF ; 
 struct strbuf STRBUF_INIT ; 
 int /*<<< orphan*/  UPDATE_REFS_DIE_ON_ERR ; 
 int create_reflog_flag ; 
 int default_flags ; 
 int FUNC4 (int /*<<< orphan*/ *,char const*,struct object_id*,int) ; 
 int /*<<< orphan*/  FUNC5 (char*,...) ; 
 scalar_t__ FUNC6 (char const*,struct object_id*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  git_default_config ; 
 int /*<<< orphan*/  git_update_ref_usage ; 
 int /*<<< orphan*/  FUNC8 (struct object_id*) ; 
 char line_termination ; 
 int /*<<< orphan*/ * msg ; 
 int /*<<< orphan*/  FUNC9 (struct object_id*) ; 
 int FUNC10 (int,char const**,char const*,struct option*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct ref_transaction* FUNC11 (struct strbuf*) ; 
 scalar_t__ FUNC12 (struct ref_transaction*,struct strbuf*) ; 
 int /*<<< orphan*/  FUNC13 (struct ref_transaction*) ; 
 int /*<<< orphan*/  FUNC14 (struct strbuf*) ; 
 int update_flags ; 
 int FUNC15 (int /*<<< orphan*/ *,char const*,struct object_id*,struct object_id*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (struct ref_transaction*) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ,struct option*) ; 

int FUNC18(int argc, const char **argv, const char *prefix)
{
	const char *refname, *oldval;
	struct object_id oid, oldoid;
	int delete = 0, no_deref = 0, read_stdin = 0, end_null = 0;
	int create_reflog = 0;
	struct option options[] = {
		FUNC3( 'm', NULL, &msg, FUNC0("reason"), FUNC0("reason of the update")),
		FUNC1('d', NULL, &delete, FUNC0("delete the reference")),
		FUNC1( 0 , "no-deref", &no_deref,
					FUNC0("update <refname> not the one it points to")),
		FUNC1('z', NULL, &end_null, FUNC0("stdin has NUL-terminated arguments")),
		FUNC1( 0 , "stdin", &read_stdin, FUNC0("read updates from stdin")),
		FUNC1( 0 , "create-reflog", &create_reflog, FUNC0("create a reflog")),
		FUNC2(),
	};

	FUNC7(git_default_config, NULL);
	argc = FUNC10(argc, argv, prefix, options, git_update_ref_usage,
			     0);
	if (msg && !*msg)
		FUNC5("Refusing to perform update with empty message.");

	create_reflog_flag = create_reflog ? REF_FORCE_CREATE_REFLOG : 0;

	if (no_deref) {
		default_flags = REF_NO_DEREF;
		update_flags = default_flags;
	}

	if (read_stdin) {
		struct strbuf err = STRBUF_INIT;
		struct ref_transaction *transaction;

		transaction = FUNC11(&err);
		if (!transaction)
			FUNC5("%s", err.buf);
		if (delete || argc > 0)
			FUNC17(git_update_ref_usage, options);
		if (end_null)
			line_termination = '\0';
		FUNC16(transaction);
		if (FUNC12(transaction, &err))
			FUNC5("%s", err.buf);
		FUNC13(transaction);
		FUNC14(&err);
		return 0;
	}

	if (end_null)
		FUNC17(git_update_ref_usage, options);

	if (delete) {
		if (argc < 1 || argc > 2)
			FUNC17(git_update_ref_usage, options);
		refname = argv[0];
		oldval = argv[1];
	} else {
		const char *value;
		if (argc < 2 || argc > 3)
			FUNC17(git_update_ref_usage, options);
		refname = argv[0];
		value = argv[1];
		oldval = argv[2];
		if (FUNC6(value, &oid))
			FUNC5("%s: not a valid SHA1", value);
	}

	if (oldval) {
		if (!*oldval)
			/*
			 * The empty string implies that the reference
			 * must not already exist:
			 */
			FUNC9(&oldoid);
		else if (FUNC6(oldval, &oldoid))
			FUNC5("%s: not a valid old SHA1", oldval);
	}

	if (delete)
		/*
		 * For purposes of backwards compatibility, we treat
		 * NULL_SHA1 as "don't care" here:
		 */
		return FUNC4(msg, refname,
				  (oldval && !FUNC8(&oldoid)) ? &oldoid : NULL,
				  default_flags);
	else
		return FUNC15(msg, refname, &oid, oldval ? &oldoid : NULL,
				  default_flags | create_reflog_flag,
				  UPDATE_REFS_DIE_ON_ERR);
}