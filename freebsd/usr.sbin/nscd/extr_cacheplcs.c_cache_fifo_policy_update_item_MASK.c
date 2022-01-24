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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (void (*) (struct cache_policy_*,struct cache_policy_item_*)) ; 
 int /*<<< orphan*/  FUNC1 (void (*) (struct cache_policy_*,struct cache_policy_item_*)) ; 

__attribute__((used)) static void
FUNC2(struct cache_policy_ *policy,
	struct cache_policy_item_ *item)
{

	FUNC0(cache_fifo_policy_update_item);
	/* policy and item arguments are ignored */
	FUNC1(cache_fifo_policy_update_item);
}