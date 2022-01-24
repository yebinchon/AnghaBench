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
struct TYPE_2__ {int /*<<< orphan*/  update_item_func; } ;
struct cache_queue_policy_ {TYPE_1__ parent_data; } ;
struct cache_policy_ {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct cache_policy_* (*) ()) ; 
 int /*<<< orphan*/  FUNC1 (struct cache_policy_* (*) ()) ; 
 int /*<<< orphan*/  cache_lru_policy_update_item ; 
 struct cache_queue_policy_* FUNC2 () ; 

struct cache_policy_ *
FUNC3(void)
{
	struct cache_queue_policy_ *retval;

	FUNC0(init_cache_lru_policy);
	retval = FUNC2();
	retval->parent_data.update_item_func = cache_lru_policy_update_item;

	FUNC1(init_cache_lru_policy);
	return ((struct cache_policy_ *)retval);
}