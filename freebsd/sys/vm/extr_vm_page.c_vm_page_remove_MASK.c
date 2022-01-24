#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_1__* vm_page_t ;
struct TYPE_5__ {int /*<<< orphan*/ * object; } ;

/* Variables and functions */
 scalar_t__ VPRC_OBJREF ; 
 scalar_t__ FUNC0 (TYPE_1__*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 

bool
FUNC2(vm_page_t m)
{

	FUNC1(m);
	m->object = NULL;
	return (FUNC0(m, VPRC_OBJREF) == VPRC_OBJREF);
}