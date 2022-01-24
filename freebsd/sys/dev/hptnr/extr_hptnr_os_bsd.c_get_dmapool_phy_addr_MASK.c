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
typedef  int /*<<< orphan*/  BUS_ADDRESS ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (void*) ; 

BUS_ADDRESS FUNC1(void *osext, void * dmapool_virt_addr)
{
	return (BUS_ADDRESS)FUNC0(dmapool_virt_addr);
}