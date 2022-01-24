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
typedef  int /*<<< orphan*/  uint16_t ;
struct gnttab_free_callback {void (* fn ) (void*) ;struct gnttab_free_callback* next; int /*<<< orphan*/  count; void* arg; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 struct gnttab_free_callback* gnttab_free_callback_list ; 
 int /*<<< orphan*/  gnttab_list_lock ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

void
FUNC3(struct gnttab_free_callback *callback,
    void (*fn)(void *), void *arg, uint16_t count)
{

	FUNC1(&gnttab_list_lock);
	if (callback->next)
		goto out;
	callback->fn = fn;
	callback->arg = arg;
	callback->count = count;
	callback->next = gnttab_free_callback_list;
	gnttab_free_callback_list = callback;
	FUNC0();
 out:
	FUNC2(&gnttab_list_lock);

}