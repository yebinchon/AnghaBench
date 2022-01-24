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
struct strbuf {int /*<<< orphan*/  len; int /*<<< orphan*/  buf; } ;
struct object_id {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  oid; } ;
struct commit {TYPE_1__ object; } ;

/* Variables and functions */
 struct strbuf STRBUF_INIT ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 scalar_t__ FUNC1 (struct commit*,int,char const**) ; 
 int /*<<< orphan*/  commit_type ; 
 int FUNC2 (int /*<<< orphan*/ ,char const*) ; 
 char* FUNC3 (struct commit*,unsigned long*) ; 
 scalar_t__ FUNC4 (char const*,struct object_id*) ; 
 struct commit* FUNC5 (int /*<<< orphan*/ ,struct object_id*) ; 
 char const* FUNC6 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *,struct object_id*) ; 
 scalar_t__ FUNC8 (struct strbuf*) ; 
 int FUNC9 (char const*,int /*<<< orphan*/ *,char*,struct object_id*,int) ; 
 scalar_t__ FUNC10 (struct strbuf*,int,char const**) ; 
 int /*<<< orphan*/  FUNC11 (struct strbuf*,char const*,unsigned long) ; 
 int /*<<< orphan*/  FUNC12 (struct strbuf*) ; 
 int /*<<< orphan*/  the_repository ; 
 int /*<<< orphan*/  FUNC13 (struct commit*,char const*) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,...) ; 
 scalar_t__ FUNC15 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct object_id*) ; 

__attribute__((used)) static int FUNC16(int argc, const char **argv, int force, int gentle)
{
	struct object_id old_oid, new_oid;
	const char *old_ref = argv[0];
	struct commit *commit;
	struct strbuf buf = STRBUF_INIT;
	const char *buffer;
	unsigned long size;

	if (FUNC4(old_ref, &old_oid) < 0)
		return FUNC2(FUNC0("not a valid object name: '%s'"), old_ref);
	commit = FUNC5(the_repository, &old_oid);
	if (!commit)
		return FUNC2(FUNC0("could not parse %s"), old_ref);

	buffer = FUNC3(commit, &size);
	FUNC11(&buf, buffer, size);
	FUNC13(commit, buffer);

	if (FUNC10(&buf, argc - 1, &argv[1]) < 0) {
		FUNC12(&buf);
		return -1;
	}

	if (FUNC8(&buf)) {
		FUNC14(FUNC0("the original commit '%s' has a gpg signature"), old_ref);
		FUNC14(FUNC0("the signature will be removed in the replacement commit!"));
	}

	if (FUNC1(commit, argc, argv)) {
		FUNC12(&buf);
		return -1;
	}

	if (FUNC15(buf.buf, buf.len, commit_type, &new_oid)) {
		FUNC12(&buf);
		return FUNC2(FUNC0("could not write replacement commit for: '%s'"),
			     old_ref);
	}

	FUNC12(&buf);

	if (FUNC7(&commit->object.oid, &new_oid)) {
		if (gentle) {
			FUNC14(FUNC0("graft for '%s' unnecessary"),
				FUNC6(&commit->object.oid));
			return 0;
		}
		return FUNC2(FUNC0("new commit is the same as the old one: '%s'"),
			     FUNC6(&commit->object.oid));
	}

	return FUNC9(old_ref, &commit->object.oid,
				  "replacement", &new_oid, force);
}