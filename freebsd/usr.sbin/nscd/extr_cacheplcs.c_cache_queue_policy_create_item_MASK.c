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
struct cache_policy_item_ {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct cache_policy_item_* (*) ()) ; 
 int /*<<< orphan*/  FUNC1 (struct cache_policy_item_* (*) ()) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 struct cache_queue_policy_item_* FUNC3 (int,int) ; 

__attribute__((used)) static struct cache_policy_item_ *
FUNC4(void)
{
	struct cache_queue_policy_item_ *retval;

	FUNC0(cache_queue_policy_create_item);
	retval = FUNC3(1,
		sizeof(*retval));
	FUNC2(retval != NULL);

	FUNC1(cache_queue_policy_create_item);
	return ((struct cache_policy_item_ *)retval);
}