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
struct freelist {int /*<<< orphan*/  dma; } ;
typedef  int /*<<< orphan*/  BUS_ADDRESS ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 void* FUNC1 (struct freelist*) ; 

void *FUNC2(struct freelist *list, BUS_ADDRESS *busaddr)
{
    void *result;
    FUNC0(list->dma);
    result = FUNC1(list);
    if (result)
        *busaddr = *(BUS_ADDRESS *)((void **)result+1);
    return result;
}