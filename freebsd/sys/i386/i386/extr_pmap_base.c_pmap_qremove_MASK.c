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
typedef  int /*<<< orphan*/  vm_offset_t ;
struct TYPE_2__ {int /*<<< orphan*/  (* pm_qremove ) (int /*<<< orphan*/ ,int) ;} ;

/* Variables and functions */
 TYPE_1__* pmap_methods_ptr ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 

void
FUNC1(vm_offset_t sva, int count)
{

	pmap_methods_ptr->pm_qremove(sva, count);
}