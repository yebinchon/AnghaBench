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
typedef  scalar_t__ uint32_t ;
struct contains_stack_entry {struct commit_list* parents; struct commit* commit; } ;
struct contains_stack {int nr; struct contains_stack_entry* contains_stack; int /*<<< orphan*/ * member_2; int /*<<< orphan*/  member_1; int /*<<< orphan*/  member_0; } ;
struct contains_cache {int dummy; } ;
struct commit_list {struct commit* item; struct commit_list* next; } ;
struct commit {scalar_t__ generation; } ;
typedef  enum contains_result { ____Placeholder_contains_result } contains_result ;

/* Variables and functions */
#define  CONTAINS_NO 130 
#define  CONTAINS_UNKNOWN 129 
#define  CONTAINS_YES 128 
 scalar_t__ GENERATION_NUMBER_INFINITY ; 
 int* FUNC0 (struct contains_cache*,struct commit*) ; 
 int FUNC1 (struct commit*,struct commit_list const*,struct contains_cache*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (struct contains_stack_entry*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,struct commit*) ; 
 int /*<<< orphan*/  FUNC4 (struct commit*,struct contains_stack*) ; 
 int /*<<< orphan*/  the_repository ; 

__attribute__((used)) static enum contains_result FUNC5(struct commit *candidate,
					      const struct commit_list *want,
					      struct contains_cache *cache)
{
	struct contains_stack contains_stack = { 0, 0, NULL };
	enum contains_result result;
	uint32_t cutoff = GENERATION_NUMBER_INFINITY;
	const struct commit_list *p;

	for (p = want; p; p = p->next) {
		struct commit *c = p->item;
		FUNC3(the_repository, c);
		if (c->generation < cutoff)
			cutoff = c->generation;
	}

	result = FUNC1(candidate, want, cache, cutoff);
	if (result != CONTAINS_UNKNOWN)
		return result;

	FUNC4(candidate, &contains_stack);
	while (contains_stack.nr) {
		struct contains_stack_entry *entry = &contains_stack.contains_stack[contains_stack.nr - 1];
		struct commit *commit = entry->commit;
		struct commit_list *parents = entry->parents;

		if (!parents) {
			*FUNC0(cache, commit) = CONTAINS_NO;
			contains_stack.nr--;
		}
		/*
		 * If we just popped the stack, parents->item has been marked,
		 * therefore contains_test will return a meaningful yes/no.
		 */
		else switch (FUNC1(parents->item, want, cache, cutoff)) {
		case CONTAINS_YES:
			*FUNC0(cache, commit) = CONTAINS_YES;
			contains_stack.nr--;
			break;
		case CONTAINS_NO:
			entry->parents = parents->next;
			break;
		case CONTAINS_UNKNOWN:
			FUNC4(parents->item, &contains_stack);
			break;
		}
	}
	FUNC2(contains_stack.contains_stack);
	return FUNC1(candidate, want, cache, cutoff);
}