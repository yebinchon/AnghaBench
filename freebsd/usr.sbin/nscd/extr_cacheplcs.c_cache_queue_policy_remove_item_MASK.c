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
struct cache_policy_ {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,struct cache_queue_policy_item_*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (void (*) (struct cache_policy_*,struct cache_policy_item_*)) ; 
 int /*<<< orphan*/  FUNC2 (void (*) (struct cache_policy_*,struct cache_policy_item_*)) ; 
 int /*<<< orphan*/  entries ; 

__attribute__((used)) static void
FUNC3(struct cache_policy_ *policy,
	struct cache_policy_item_ *item)
{
	struct cache_queue_policy_ *queue_policy;
	struct cache_queue_policy_item_	*queue_item;

	FUNC1(cache_queue_policy_remove_item);
	queue_policy = (struct cache_queue_policy_ *)policy;
	queue_item = (struct cache_queue_policy_item_ *)item;
	FUNC0(&queue_policy->head, queue_item, entries);
	FUNC2(cache_queue_policy_remove_item);
}