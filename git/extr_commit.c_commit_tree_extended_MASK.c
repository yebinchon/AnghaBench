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
struct commit_list {int dummy; } ;
struct commit_extra_header {struct commit_extra_header* next; } ;
struct TYPE_2__ {struct object_id const oid; } ;
struct commit {TYPE_1__ object; } ;

/* Variables and functions */
 int /*<<< orphan*/  IDENT_STRICT ; 
 int /*<<< orphan*/  OBJ_TREE ; 
 char* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct strbuf*,struct commit_extra_header*) ; 
 int /*<<< orphan*/  FUNC2 (struct object_id const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  commit_type ; 
 int /*<<< orphan*/  commit_utf8_warn ; 
 scalar_t__ FUNC3 (struct strbuf*,char const*) ; 
 int FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*) ; 
 char* FUNC6 (int /*<<< orphan*/ ) ; 
 char const* git_commit_encoding ; 
 char const* FUNC7 (int /*<<< orphan*/ ) ; 
 int FUNC8 (char const*) ; 
 scalar_t__ FUNC9 (char const*,char,size_t) ; 
 char const* FUNC10 (struct object_id const*) ; 
 struct commit* FUNC11 (struct commit_list**) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  FUNC12 (struct strbuf*,char const*,size_t) ; 
 int /*<<< orphan*/  FUNC13 (struct strbuf*,char) ; 
 int /*<<< orphan*/  FUNC14 (struct strbuf*,char*,char const*) ; 
 int /*<<< orphan*/  FUNC15 (struct strbuf*,int) ; 
 int /*<<< orphan*/  FUNC16 (struct strbuf*) ; 
 int /*<<< orphan*/  FUNC17 (struct strbuf*) ; 
 int FUNC18 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct object_id*) ; 

int FUNC19(const char *msg, size_t msg_len,
			 const struct object_id *tree,
			 struct commit_list *parents, struct object_id *ret,
			 const char *author, const char *sign_commit,
			 struct commit_extra_header *extra)
{
	int result;
	int encoding_is_utf8;
	struct strbuf buffer;

	FUNC2(tree, OBJ_TREE);

	if (FUNC9(msg, '\0', msg_len))
		return FUNC4("a NUL byte in commit log message not allowed.");

	/* Not having i18n.commitencoding is the same as having utf-8 */
	encoding_is_utf8 = FUNC8(git_commit_encoding);

	FUNC15(&buffer, 8192); /* should avoid reallocs for the headers */
	FUNC14(&buffer, "tree %s\n", FUNC10(tree));

	/*
	 * NOTE! This ordering means that the same exact tree merged with a
	 * different order of parents will be a _different_ changeset even
	 * if everything else stays the same.
	 */
	while (parents) {
		struct commit *parent = FUNC11(&parents);
		FUNC14(&buffer, "parent %s\n",
			    FUNC10(&parent->object.oid));
	}

	/* Person/date information */
	if (!author)
		author = FUNC6(IDENT_STRICT);
	FUNC14(&buffer, "author %s\n", author);
	FUNC14(&buffer, "committer %s\n", FUNC7(IDENT_STRICT));
	if (!encoding_is_utf8)
		FUNC14(&buffer, "encoding %s\n", git_commit_encoding);

	while (extra) {
		FUNC1(&buffer, extra);
		extra = extra->next;
	}
	FUNC13(&buffer, '\n');

	/* And add the comment */
	FUNC12(&buffer, msg, msg_len);

	/* And check the encoding */
	if (encoding_is_utf8 && !FUNC17(&buffer))
		FUNC5(stderr, "%s", FUNC0(commit_utf8_warn));

	if (sign_commit && FUNC3(&buffer, sign_commit)) {
		result = -1;
		goto out;
	}

	result = FUNC18(buffer.buf, buffer.len, commit_type, ret);
out:
	FUNC16(&buffer);
	return result;
}