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
struct refspec {int nr; int /*<<< orphan*/ * items; } ;
typedef  struct ref {struct ref const* next; } const ref ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 struct ref const* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct ref const*,char*) ; 
 int /*<<< orphan*/  FUNC3 (struct ref const*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (struct ref const*,int /*<<< orphan*/ *,struct ref const***,int /*<<< orphan*/ ) ; 
 struct ref const* FUNC5 (struct ref const*,struct ref const*,int /*<<< orphan*/ ) ; 
 scalar_t__ option_branch ; 
 int /*<<< orphan*/  option_mirror ; 
 int /*<<< orphan*/  option_no_tags ; 
 scalar_t__ option_single_branch ; 
 int /*<<< orphan*/ * tag_refspec ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static struct ref *FUNC7(const struct ref *refs,
		struct refspec *refspec)
{
	struct ref *head = FUNC1(FUNC2(refs, "HEAD"));
	struct ref *local_refs = head;
	struct ref **tail = head ? &head->next : &local_refs;

	if (option_single_branch) {
		struct ref *remote_head = NULL;

		if (!option_branch)
			remote_head = FUNC5(head, refs, 0);
		else {
			local_refs = NULL;
			tail = &local_refs;
			remote_head = FUNC1(FUNC3(refs, option_branch));
		}

		if (!remote_head && option_branch)
			FUNC6(FUNC0("Could not find remote branch %s to clone."),
				option_branch);
		else {
			int i;
			for (i = 0; i < refspec->nr; i++)
				FUNC4(remote_head, &refspec->items[i],
					      &tail, 0);

			/* if --branch=tag, pull the requested tag explicitly */
			FUNC4(remote_head, tag_refspec, &tail, 0);
		}
	} else {
		int i;
		for (i = 0; i < refspec->nr; i++)
			FUNC4(refs, &refspec->items[i], &tail, 0);
	}

	if (!option_mirror && !option_single_branch && !option_no_tags)
		FUNC4(refs, tag_refspec, &tail, 0);

	return local_refs;
}