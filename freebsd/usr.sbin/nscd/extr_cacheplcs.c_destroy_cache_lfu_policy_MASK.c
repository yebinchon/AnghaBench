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
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,struct cache_lfu_policy_item_*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (void (*) (struct cache_policy_*)) ; 
 int /*<<< orphan*/  FUNC4 (void (*) (struct cache_policy_*)) ; 
 int /*<<< orphan*/  FUNC5 (struct cache_policy_item_*) ; 
 int /*<<< orphan*/  entries ; 
 int /*<<< orphan*/  FUNC6 (struct cache_policy_*) ; 

void
FUNC7(struct cache_policy_ *policy)
{
	int i;
	struct cache_lfu_policy_ *lfu_policy;
	struct cache_lfu_policy_item_ *lfu_item;

	FUNC3(destroy_cache_lfu_policy);
	lfu_policy = (struct cache_lfu_policy_ *)policy;
	for (i = 0; i < CACHELIB_MAX_FREQUENCY; ++i) {
		while (!FUNC0(&(lfu_policy->groups[i]))) {
			lfu_item = FUNC1(&(lfu_policy->groups[i]));
			FUNC2(&(lfu_policy->groups[i]), lfu_item,
				entries);
			FUNC5(
				(struct cache_policy_item_ *)lfu_item);
		}
	}
	FUNC6(policy);
	FUNC4(destroy_cache_lfu_policy);
}