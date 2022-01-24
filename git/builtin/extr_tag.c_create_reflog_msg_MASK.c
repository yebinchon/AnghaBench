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
struct strbuf {int /*<<< orphan*/  len; } ;
struct object_id {int dummy; } ;
struct commit {int /*<<< orphan*/  date; } ;
typedef  enum object_type { ____Placeholder_object_type } object_type ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  DEFAULT_ABBREV ; 
#define  OBJ_BLOB 131 
#define  OBJ_COMMIT 130 
#define  OBJ_TAG 129 
#define  OBJ_TREE 128 
 int /*<<< orphan*/  SHORT ; 
 int FUNC1 (char*,char const**) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 char* FUNC3 (char*) ; 
 struct commit* FUNC4 (int /*<<< orphan*/ ,struct object_id const*) ; 
 int FUNC5 (int /*<<< orphan*/ ,struct object_id const*,int /*<<< orphan*/ *) ; 
 char* FUNC6 (struct object_id const*,int*,unsigned long*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct strbuf*,struct object_id const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct strbuf*,char) ; 
 int /*<<< orphan*/  FUNC10 (struct strbuf*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct strbuf*,char*) ; 
 int /*<<< orphan*/  FUNC12 (struct strbuf*,int /*<<< orphan*/ ,char const*,int) ; 
 int /*<<< orphan*/  the_repository ; 

__attribute__((used)) static void FUNC13(const struct object_id *oid, struct strbuf *sb)
{
	enum object_type type;
	struct commit *c;
	char *buf;
	unsigned long size;
	int subject_len = 0;
	const char *subject_start;

	char *rla = FUNC3("GIT_REFLOG_ACTION");
	if (rla) {
		FUNC11(sb, rla);
	} else {
		FUNC11(sb, "tag: tagging ");
		FUNC8(sb, oid, DEFAULT_ABBREV);
	}

	FUNC11(sb, " (");
	type = FUNC5(the_repository, oid, NULL);
	switch (type) {
	default:
		FUNC11(sb, "object of unknown type");
		break;
	case OBJ_COMMIT:
		if ((buf = FUNC6(oid, &type, &size)) != NULL) {
			subject_len = FUNC1(buf, &subject_start);
			FUNC12(sb, sb->len, subject_start, subject_len);
		} else {
			FUNC11(sb, "commit object");
		}
		FUNC2(buf);

		if ((c = FUNC4(the_repository, oid)) != NULL)
			FUNC10(sb, ", %s", FUNC7(c->date, 0, FUNC0(SHORT)));
		break;
	case OBJ_TREE:
		FUNC11(sb, "tree object");
		break;
	case OBJ_BLOB:
		FUNC11(sb, "blob object");
		break;
	case OBJ_TAG:
		FUNC11(sb, "other tag object");
		break;
	}
	FUNC9(sb, ')');
}