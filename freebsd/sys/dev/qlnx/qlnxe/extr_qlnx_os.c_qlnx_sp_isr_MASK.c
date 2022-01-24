#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct ecore_hwfn {scalar_t__ p_dev; } ;
struct TYPE_3__ {int /*<<< orphan*/  sp_interrupts; } ;
typedef  TYPE_1__ qlnx_host_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct ecore_hwfn*) ; 

void
FUNC2(void *arg)
{
	struct ecore_hwfn	*p_hwfn;
	qlnx_host_t		*ha;
	
	p_hwfn = arg;

	ha = (qlnx_host_t *)p_hwfn->p_dev;

	ha->sp_interrupts++;

	FUNC0(ha, "enter\n");

	FUNC1(p_hwfn);

	FUNC0(ha, "exit\n");
	
	return;
}