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
typedef  int /*<<< orphan*/  u_int ;
struct TYPE_2__ {int /*<<< orphan*/  (* pm_get_kcr3 ) () ;} ;

/* Variables and functions */
 TYPE_1__* pmap_methods_ptr ; 
 int /*<<< orphan*/  FUNC0 () ; 

u_int
FUNC1(void)
{

	return (pmap_methods_ptr->pm_get_kcr3());
}