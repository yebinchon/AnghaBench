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
struct strbuf {int /*<<< orphan*/  buf; } ;
struct object_id {int dummy; } ;
struct commit_list {int dummy; } ;
struct commit {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  len; int /*<<< orphan*/  buf; } ;

/* Variables and functions */
 scalar_t__ FF_NO ; 
 struct strbuf STRBUF_INIT ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (struct commit*,struct commit_list**) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct object_id*,struct commit_list*,struct object_id*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ fast_forward ; 
 int /*<<< orphan*/  FUNC4 (struct commit*,struct commit_list*,struct object_id*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct commit_list*) ; 
 TYPE_1__ merge_msg ; 
 int /*<<< orphan*/  FUNC6 (struct commit_list*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  sign_commit ; 
 int /*<<< orphan*/  FUNC8 (struct strbuf*,char*,char const*) ; 
 int /*<<< orphan*/  FUNC9 (struct strbuf*) ; 
 int /*<<< orphan*/  the_repository ; 
 int /*<<< orphan*/  FUNC10 (struct object_id*) ; 

__attribute__((used)) static int FUNC11(struct commit *head,
			    int head_subsumed,
			    struct commit_list *common,
			    struct commit_list *remoteheads,
			    struct object_id *result_tree,
			    const char *wt_strategy)
{
	struct commit_list *parents = NULL;
	struct strbuf buf = STRBUF_INIT;
	struct object_id result_commit;

	FUNC10(result_tree);
	FUNC5(common);
	parents = remoteheads;
	if (!head_subsumed || fast_forward == FF_NO)
		FUNC1(head, &parents);
	FUNC6(remoteheads);
	if (FUNC2(merge_msg.buf, merge_msg.len, result_tree, parents,
			&result_commit, NULL, sign_commit))
		FUNC3(FUNC0("failed to write commit object"));
	FUNC8(&buf, "Merge made by the '%s' strategy.", wt_strategy);
	FUNC4(head, remoteheads, &result_commit, buf.buf);
	FUNC9(&buf);
	FUNC7(the_repository);
	return 0;
}