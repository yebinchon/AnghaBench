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
struct strbuf {int len; char* buf; } ;
struct object_id {int dummy; } ;
struct object {int /*<<< orphan*/  oid; } ;
struct merge_parents {int nr; TYPE_2__* item; } ;
struct commit_list {int dummy; } ;
struct TYPE_3__ {int /*<<< orphan*/  oid; } ;
struct commit {TYPE_1__ object; } ;
struct TYPE_4__ {int used; int /*<<< orphan*/  commit; } ;

/* Variables and functions */
 int /*<<< orphan*/  OBJ_COMMIT ; 
 int /*<<< orphan*/  FUNC0 (struct merge_parents*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct commit*,struct commit_list**) ; 
 struct commit* FUNC2 (int /*<<< orphan*/ ,struct object_id*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 struct object* FUNC4 (int /*<<< orphan*/ ,struct object_id*) ; 
 scalar_t__ FUNC5 (char*,struct object_id*,char const**) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct object*,int /*<<< orphan*/ ) ; 
 struct commit* FUNC7 (struct commit_list**) ; 
 int /*<<< orphan*/  FUNC8 (struct commit_list**) ; 
 char* FUNC9 (char*,char) ; 
 int FUNC10 (char*) ; 
 int /*<<< orphan*/  the_repository ; 

__attribute__((used)) static void FUNC11(struct merge_parents *result,
			       struct strbuf *in, struct object_id *head)
{
	struct commit_list *parents;
	struct commit *head_commit;
	int pos = 0, i, j;

	parents = NULL;
	while (pos < in->len) {
		int len;
		char *p = in->buf + pos;
		char *newline = FUNC9(p, '\n');
		const char *q;
		struct object_id oid;
		struct commit *parent;
		struct object *obj;

		len = newline ? newline - p : FUNC10(p);
		pos += len + !!newline;

		if (FUNC5(p, &oid, &q) ||
		    q[0] != '\t' ||
		    q[1] != '\t')
			continue; /* skip not-for-merge */
		/*
		 * Do not use get_merge_parent() here; we do not have
		 * "name" here and we do not want to contaminate its
		 * util field yet.
		 */
		obj = FUNC4(the_repository, &oid);
		parent = (struct commit *)FUNC6(NULL, 0, obj, OBJ_COMMIT);
		if (!parent)
			continue;
		FUNC1(parent, &parents);
		FUNC0(result, &obj->oid, &parent->object.oid);
	}
	head_commit = FUNC2(the_repository, head);
	if (head_commit)
		FUNC1(head_commit, &parents);
	FUNC8(&parents);

	while (parents) {
		struct commit *cmit = FUNC7(&parents);
		for (i = 0; i < result->nr; i++)
			if (FUNC3(&result->item[i].commit, &cmit->object.oid))
				result->item[i].used = 1;
	}

	for (i = j = 0; i < result->nr; i++) {
		if (result->item[i].used) {
			if (i != j)
				result->item[j] = result->item[i];
			j++;
		}
	}
	result->nr = j;
}