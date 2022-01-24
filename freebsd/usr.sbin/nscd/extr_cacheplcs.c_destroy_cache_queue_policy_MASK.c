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
struct cache_queue_policy_item_ {int dummy; } ;
struct cache_queue_policy_ {int /*<<< orphan*/  head; } ;
struct cache_policy_item_ {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 struct cache_queue_policy_item_* FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,struct cache_queue_policy_item_*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (void (*) (struct cache_queue_policy_*)) ; 
 int /*<<< orphan*/  FUNC4 (void (*) (struct cache_queue_policy_*)) ; 
 int /*<<< orphan*/  FUNC5 (struct cache_policy_item_*) ; 
 int /*<<< orphan*/  entries ; 
 int /*<<< orphan*/  FUNC6 (struct cache_queue_policy_*) ; 

__attribute__((used)) static void
FUNC7(struct cache_queue_policy_ *queue_policy)
{
	struct cache_queue_policy_item_	*queue_item;

	FUNC3(destroy_cache_queue_policy);
	while (!FUNC0(&queue_policy->head)) {
		queue_item = FUNC1(&queue_policy->head);
		FUNC2(&queue_policy->head, queue_item, entries);
		FUNC5(
			(struct cache_policy_item_ *)queue_item);
	}
	FUNC6(queue_policy);
	FUNC4(destroy_cache_queue_policy);
}