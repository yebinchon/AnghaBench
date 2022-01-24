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
struct cache_queue_policy_ {int /*<<< orphan*/  head; } ;
struct cache_policy_item_ {int dummy; } ;
struct cache_policy_ {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct cache_policy_item_* (*) (struct cache_policy_*)) ; 
 int /*<<< orphan*/  FUNC2 (struct cache_policy_item_* (*) (struct cache_policy_*)) ; 
 int /*<<< orphan*/  cache_queue_policy_head_ ; 

__attribute__((used)) static struct cache_policy_item_ *
FUNC3(struct cache_policy_ *policy)
{
	struct cache_queue_policy_ *queue_policy;

	FUNC1(cache_queue_policy_get_last_item);
	queue_policy = (struct cache_queue_policy_ *)policy;
	FUNC2(cache_queue_policy_get_last_item);
	return ((struct cache_policy_item_ *)FUNC0(&queue_policy->head,
		cache_queue_policy_head_));
}