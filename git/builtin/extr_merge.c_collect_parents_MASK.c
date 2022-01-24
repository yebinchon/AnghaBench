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
struct strbuf {int dummy; } ;
struct commit_list {int /*<<< orphan*/  item; struct commit_list* next; } ;
struct commit {int dummy; } ;
struct TYPE_4__ {struct commit_list* next; } ;
struct TYPE_3__ {int /*<<< orphan*/  name; } ;

/* Variables and functions */
 struct strbuf STRBUF_INIT ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 TYPE_2__* FUNC1 (struct commit*,struct commit_list**) ; 
 struct commit* FUNC2 (char const*) ; 
 int /*<<< orphan*/  FUNC3 (struct commit_list**,struct strbuf*) ; 
 int /*<<< orphan*/  have_message ; 
 int /*<<< orphan*/  FUNC4 (char const*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,struct strbuf*) ; 
 TYPE_1__* FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct strbuf*,struct strbuf*) ; 
 struct commit_list* FUNC8 (struct commit*,int*,struct commit_list*) ; 
 scalar_t__ shortlog_len ; 
 int /*<<< orphan*/  FUNC9 (struct strbuf*) ; 
 int /*<<< orphan*/  FUNC10 (char const*,char*) ; 

__attribute__((used)) static struct commit_list *FUNC11(struct commit *head_commit,
					   int *head_subsumed,
					   int argc, const char **argv,
					   struct strbuf *merge_msg)
{
	int i;
	struct commit_list *remoteheads = NULL;
	struct commit_list **remotes = &remoteheads;
	struct strbuf merge_names = STRBUF_INIT, *autogen = NULL;

	if (merge_msg && (!have_message || shortlog_len))
		autogen = &merge_names;

	if (head_commit)
		remotes = &FUNC1(head_commit, remotes)->next;

	if (argc == 1 && !FUNC10(argv[0], "FETCH_HEAD")) {
		FUNC3(remotes, autogen);
		remoteheads = FUNC8(head_commit, head_subsumed, remoteheads);
	} else {
		for (i = 0; i < argc; i++) {
			struct commit *commit = FUNC2(argv[i]);
			if (!commit)
				FUNC4(argv[i], "merge",
						 FUNC0("not something we can merge"));
			remotes = &FUNC1(commit, remotes)->next;
		}
		remoteheads = FUNC8(head_commit, head_subsumed, remoteheads);
		if (autogen) {
			struct commit_list *p;
			for (p = remoteheads; p; p = p->next)
				FUNC5(FUNC6(p->item)->name, autogen);
		}
	}

	if (autogen) {
		FUNC7(autogen, merge_msg);
		FUNC9(autogen);
	}

	return remoteheads;
}