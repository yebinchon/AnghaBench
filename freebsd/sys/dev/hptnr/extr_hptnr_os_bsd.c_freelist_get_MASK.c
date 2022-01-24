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
struct freelist {scalar_t__ count; void* head; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (void*) ; 

void *FUNC1(struct freelist *list)
{
    void * result;
    if (list->count) {
        FUNC0(list->head);
        result = list->head;
        list->head = *(void **)result;
        list->count--;
        return result;
    }
    return 0;
}