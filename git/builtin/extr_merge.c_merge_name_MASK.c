#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct strbuf {char* buf; scalar_t__ len; } ;
struct object_id {int dummy; } ;
struct merge_remote_desc {TYPE_1__* obj; } ;
struct TYPE_4__ {struct object_id oid; } ;
struct commit {TYPE_2__ object; } ;
struct TYPE_3__ {scalar_t__ type; struct object_id oid; } ;

/* Variables and functions */
 scalar_t__ OBJ_TAG ; 
 struct strbuf STRBUF_INIT ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char const*) ; 
 scalar_t__ FUNC2 (char const*,int,struct object_id*,char**) ; 
 struct commit* FUNC3 (char const*) ; 
 scalar_t__ FUNC4 (char const) ; 
 struct merge_remote_desc* FUNC5 (struct commit*) ; 
 int /*<<< orphan*/  FUNC6 (struct object_id*) ; 
 int /*<<< orphan*/  FUNC7 (struct object_id*) ; 
 scalar_t__ FUNC8 (char*) ; 
 scalar_t__ FUNC9 (char*,char*) ; 
 int /*<<< orphan*/  FUNC10 (struct strbuf*,char*,char const*,...) ; 
 int /*<<< orphan*/  FUNC11 (struct strbuf*,char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (struct strbuf*) ; 
 int /*<<< orphan*/  FUNC13 (struct strbuf*,scalar_t__) ; 
 int FUNC14 (char const*) ; 
 char* FUNC15 (char const*,char) ; 
 int /*<<< orphan*/  FUNC16 (scalar_t__) ; 

__attribute__((used)) static void FUNC17(const char *remote, struct strbuf *msg)
{
	struct commit *remote_head;
	struct object_id branch_head;
	struct strbuf buf = STRBUF_INIT;
	struct strbuf bname = STRBUF_INIT;
	struct merge_remote_desc *desc;
	const char *ptr;
	char *found_ref;
	int len, early;

	FUNC11(&bname, remote, 0);
	remote = bname.buf;

	FUNC7(&branch_head);
	remote_head = FUNC3(remote);
	if (!remote_head)
		FUNC1(FUNC0("'%s' does not point to a commit"), remote);

	if (FUNC2(remote, FUNC14(remote), &branch_head, &found_ref) > 0) {
		if (FUNC9(found_ref, "refs/heads/")) {
			FUNC10(msg, "%s\t\tbranch '%s' of .\n",
				    FUNC6(&branch_head), remote);
			goto cleanup;
		}
		if (FUNC9(found_ref, "refs/tags/")) {
			FUNC10(msg, "%s\t\ttag '%s' of .\n",
				    FUNC6(&branch_head), remote);
			goto cleanup;
		}
		if (FUNC9(found_ref, "refs/remotes/")) {
			FUNC10(msg, "%s\t\tremote-tracking branch '%s' of .\n",
				    FUNC6(&branch_head), remote);
			goto cleanup;
		}
	}

	/* See if remote matches <name>^^^.. or <name>~<number> */
	for (len = 0, ptr = remote + FUNC14(remote);
	     remote < ptr && ptr[-1] == '^';
	     ptr--)
		len++;
	if (len)
		early = 1;
	else {
		early = 0;
		ptr = FUNC15(remote, '~');
		if (ptr) {
			int seen_nonzero = 0;

			len++; /* count ~ */
			while (*++ptr && FUNC4(*ptr)) {
				seen_nonzero |= (*ptr != '0');
				len++;
			}
			if (*ptr)
				len = 0; /* not ...~<number> */
			else if (seen_nonzero)
				early = 1;
			else if (len == 1)
				early = 1; /* "name~" is "name~1"! */
		}
	}
	if (len) {
		struct strbuf truname = STRBUF_INIT;
		FUNC10(&truname, "refs/heads/%s", remote);
		FUNC13(&truname, truname.len - len);
		if (FUNC8(truname.buf)) {
			FUNC10(msg,
				    "%s\t\tbranch '%s'%s of .\n",
				    FUNC6(&remote_head->object.oid),
				    truname.buf + 11,
				    (early ? " (early part)" : ""));
			FUNC12(&truname);
			goto cleanup;
		}
		FUNC12(&truname);
	}

	desc = FUNC5(remote_head);
	if (desc && desc->obj && desc->obj->type == OBJ_TAG) {
		FUNC10(msg, "%s\t\t%s '%s'\n",
			    FUNC6(&desc->obj->oid),
			    FUNC16(desc->obj->type),
			    remote);
		goto cleanup;
	}

	FUNC10(msg, "%s\t\tcommit '%s'\n",
		FUNC6(&remote_head->object.oid), remote);
cleanup:
	FUNC12(&buf);
	FUNC12(&bname);
}