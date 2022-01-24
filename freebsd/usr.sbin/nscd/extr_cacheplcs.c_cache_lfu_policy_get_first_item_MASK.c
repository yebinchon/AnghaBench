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
struct cache_lfu_policy_item_ {int dummy; } ;
struct cache_lfu_policy_ {int /*<<< orphan*/ * groups; } ;

/* Variables and functions */
 int CACHELIB_MAX_FREQUENCY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 struct cache_lfu_policy_item_* FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct cache_policy_item_* (*) (struct cache_policy_*)) ; 
 int /*<<< orphan*/  FUNC3 (struct cache_policy_item_* (*) (struct cache_policy_*)) ; 

__attribute__((used)) static struct cache_policy_item_ *
FUNC4(struct cache_policy_ *policy)
{
	struct cache_lfu_policy_ *lfu_policy;
	struct cache_lfu_policy_item_ *lfu_item;
	int i;

	FUNC2(cache_lfu_policy_get_first_item);
	lfu_item = NULL;
	lfu_policy = (struct cache_lfu_policy_ *)policy;
	for (i = 0; i < CACHELIB_MAX_FREQUENCY; ++i)
		if (!FUNC0(&(lfu_policy->groups[i]))) {
			lfu_item = FUNC1(&(lfu_policy->groups[i]));
			break;
		}

	FUNC3(cache_lfu_policy_get_first_item);
	return ((struct cache_policy_item_ *)lfu_item);
}