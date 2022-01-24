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
struct cache_queue_policy_ {int dummy; } ;
struct cache_policy_ {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (void (*) (struct cache_policy_*)) ; 
 int /*<<< orphan*/  FUNC1 (void (*) (struct cache_policy_*)) ; 
 int /*<<< orphan*/  FUNC2 (struct cache_queue_policy_*) ; 

void
FUNC3(struct cache_policy_ *policy)
{
	struct cache_queue_policy_	*queue_policy;

	FUNC0(destroy_cache_lru_policy);
	queue_policy = (struct cache_queue_policy_ *)policy;
	FUNC2(queue_policy);
	FUNC1(destroy_cache_lru_policy);
}