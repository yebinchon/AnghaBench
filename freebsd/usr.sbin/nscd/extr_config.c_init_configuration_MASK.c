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
struct configuration {int entries_capacity; int /*<<< orphan*/  rwlock; int /*<<< orphan*/ * entries; } ;

/* Variables and functions */
 int INITIAL_ENTRIES_CAPACITY ; 
 int /*<<< orphan*/  FUNC0 (struct configuration* (*) ()) ; 
 int /*<<< orphan*/  FUNC1 (struct configuration* (*) ()) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 void* FUNC3 (int,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

struct configuration *
FUNC5(void)
{
	struct configuration	*retval;

	FUNC0(init_configuration);
	retval = FUNC3(1, sizeof(*retval));
	FUNC2(retval != NULL);

	retval->entries_capacity = INITIAL_ENTRIES_CAPACITY;
	retval->entries = FUNC3(retval->entries_capacity,
		sizeof(*retval->entries));
	FUNC2(retval->entries != NULL);

	FUNC4(&retval->rwlock, NULL);

	FUNC1(init_configuration);
	return (retval);
}