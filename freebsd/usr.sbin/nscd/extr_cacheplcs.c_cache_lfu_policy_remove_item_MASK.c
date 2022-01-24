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
struct cache_policy_item_ {int dummy; } ;
struct cache_policy_ {int dummy; } ;
struct cache_lfu_policy_item_ {size_t frequency; } ;
struct cache_lfu_policy_ {int /*<<< orphan*/ * groups; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,struct cache_lfu_policy_item_*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (void (*) (struct cache_policy_*,struct cache_policy_item_*)) ; 
 int /*<<< orphan*/  FUNC2 (void (*) (struct cache_policy_*,struct cache_policy_item_*)) ; 
 int /*<<< orphan*/  entries ; 

__attribute__((used)) static void
FUNC3(struct cache_policy_ *policy,
	struct cache_policy_item_ *item)
{
	struct cache_lfu_policy_ *lfu_policy;
	struct cache_lfu_policy_item_ *lfu_item;

	FUNC1(cache_lfu_policy_remove_item);
	lfu_policy = (struct cache_lfu_policy_ *)policy;
	lfu_item = (struct cache_lfu_policy_item_ *)item;

	FUNC0(&(lfu_policy->groups[lfu_item->frequency]), lfu_item,
		entries);
	FUNC2(cache_lfu_policy_remove_item);
}