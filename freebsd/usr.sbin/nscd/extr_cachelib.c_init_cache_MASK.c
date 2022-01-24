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
struct cache_params {int dummy; } ;
struct cache_ {int entries_capacity; scalar_t__ entries_size; int /*<<< orphan*/ * entries; int /*<<< orphan*/  params; } ;

/* Variables and functions */
 int INITIAL_ENTRIES_CAPACITY ; 
 int /*<<< orphan*/  FUNC0 (struct cache_* (*) (struct cache_params const*)) ; 
 int /*<<< orphan*/  FUNC1 (struct cache_* (*) (struct cache_params const*)) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 void* FUNC3 (int,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,struct cache_params const*,int) ; 

struct cache_ *
FUNC5(struct cache_params const *params)
{
	struct cache_ *retval;

	FUNC0(init_cache);
	FUNC2(params != NULL);

	retval = FUNC3(1, sizeof(*retval));
	FUNC2(retval != NULL);

	FUNC2(params != NULL);
	FUNC4(&retval->params, params, sizeof(struct cache_params));

	retval->entries = FUNC3(INITIAL_ENTRIES_CAPACITY,
		sizeof(*retval->entries));
	FUNC2(retval->entries != NULL);

	retval->entries_capacity = INITIAL_ENTRIES_CAPACITY;
	retval->entries_size = 0;

	FUNC1(init_cache);
	return (retval);
}