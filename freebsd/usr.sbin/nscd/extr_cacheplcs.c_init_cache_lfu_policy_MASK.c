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
struct cache_policy_ {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  get_prev_item_func; int /*<<< orphan*/  get_next_item_func; int /*<<< orphan*/  get_last_item_func; int /*<<< orphan*/  get_first_item_func; int /*<<< orphan*/  remove_item_func; int /*<<< orphan*/  update_item_func; int /*<<< orphan*/  add_item_func; int /*<<< orphan*/  destroy_item_func; int /*<<< orphan*/  create_item_func; } ;
struct cache_lfu_policy_ {int /*<<< orphan*/ * groups; TYPE_1__ parent_data; } ;

/* Variables and functions */
 int CACHELIB_MAX_FREQUENCY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct cache_policy_* (*) ()) ; 
 int /*<<< orphan*/  FUNC2 (struct cache_policy_* (*) ()) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  cache_lfu_policy_add_item ; 
 int /*<<< orphan*/  cache_lfu_policy_create_item ; 
 int /*<<< orphan*/  cache_lfu_policy_destroy_item ; 
 int /*<<< orphan*/  cache_lfu_policy_get_first_item ; 
 int /*<<< orphan*/  cache_lfu_policy_get_last_item ; 
 int /*<<< orphan*/  cache_lfu_policy_get_next_item ; 
 int /*<<< orphan*/  cache_lfu_policy_get_prev_item ; 
 int /*<<< orphan*/  cache_lfu_policy_remove_item ; 
 int /*<<< orphan*/  cache_lfu_policy_update_item ; 
 struct cache_lfu_policy_* FUNC4 (int,int) ; 

struct cache_policy_ *
FUNC5(void)
{
	int i;
	struct cache_lfu_policy_ *retval;

	FUNC1(init_cache_lfu_policy);
	retval = FUNC4(1,
		sizeof(*retval));
	FUNC3(retval != NULL);

	retval->parent_data.create_item_func = cache_lfu_policy_create_item;
	retval->parent_data.destroy_item_func = cache_lfu_policy_destroy_item;

	retval->parent_data.add_item_func = cache_lfu_policy_add_item;
	retval->parent_data.update_item_func = cache_lfu_policy_update_item;
	retval->parent_data.remove_item_func = cache_lfu_policy_remove_item;

	retval->parent_data.get_first_item_func =
		cache_lfu_policy_get_first_item;
	retval->parent_data.get_last_item_func =
		cache_lfu_policy_get_last_item;
	retval->parent_data.get_next_item_func =
		cache_lfu_policy_get_next_item;
	retval->parent_data.get_prev_item_func =
		cache_lfu_policy_get_prev_item;

	for (i = 0; i < CACHELIB_MAX_FREQUENCY; ++i)
		FUNC0(&(retval->groups[i]));

	FUNC2(init_cache_lfu_policy);
	return ((struct cache_policy_ *)retval);
}