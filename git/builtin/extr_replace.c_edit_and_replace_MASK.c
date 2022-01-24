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
struct strbuf {int dummy; } ;
struct object_id {int dummy; } ;
typedef  enum object_type { ____Placeholder_object_type } object_type ;

/* Variables and functions */
 struct strbuf STRBUF_INIT ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 scalar_t__ FUNC1 (struct object_id*,struct object_id*,struct strbuf*,int) ; 
 int FUNC2 (int /*<<< orphan*/ ,...) ; 
 scalar_t__ FUNC3 (struct object_id*,int,int,char*) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 scalar_t__ FUNC5 (char const*,struct object_id*) ; 
 char* FUNC6 (char*) ; 
 scalar_t__ FUNC7 (struct object_id*,int,int,char*) ; 
 scalar_t__ FUNC8 (char*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC9 (int /*<<< orphan*/ ,struct object_id*,int /*<<< orphan*/ *) ; 
 char const* FUNC10 (struct object_id*) ; 
 scalar_t__ FUNC11 (struct object_id*,struct object_id*) ; 
 int FUNC12 (char const*,struct object_id*,char*,struct object_id*,int) ; 
 int /*<<< orphan*/  FUNC13 (struct strbuf*) ; 
 int /*<<< orphan*/  the_repository ; 

__attribute__((used)) static int FUNC14(const char *object_ref, int force, int raw)
{
	char *tmpfile;
	enum object_type type;
	struct object_id old_oid, new_oid, prev;
	struct strbuf ref = STRBUF_INIT;

	if (FUNC5(object_ref, &old_oid) < 0)
		return FUNC2(FUNC0("not a valid object name: '%s'"), object_ref);

	type = FUNC9(the_repository, &old_oid, NULL);
	if (type < 0)
		return FUNC2(FUNC0("unable to get object type for %s"),
			     FUNC10(&old_oid));

	if (FUNC1(&old_oid, &prev, &ref, force)) {
		FUNC13(&ref);
		return -1;
	}
	FUNC13(&ref);

	tmpfile = FUNC6("REPLACE_EDITOBJ");
	if (FUNC3(&old_oid, type, raw, tmpfile)) {
		FUNC4(tmpfile);
		return -1;
	}
	if (FUNC8(tmpfile, NULL, NULL) < 0) {
		FUNC4(tmpfile);
		return FUNC2(FUNC0("editing object file failed"));
	}
	if (FUNC7(&new_oid, type, raw, tmpfile)) {
		FUNC4(tmpfile);
		return -1;
	}
	FUNC4(tmpfile);

	if (FUNC11(&old_oid, &new_oid))
		return FUNC2(FUNC0("new object is the same as the old one: '%s'"), FUNC10(&old_oid));

	return FUNC12(object_ref, &old_oid, "replacement", &new_oid, force);
}