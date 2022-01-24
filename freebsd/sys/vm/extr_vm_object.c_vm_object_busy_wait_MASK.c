#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_1__* vm_object_t ;
struct TYPE_4__ {scalar_t__ busy; } ;

/* Variables and functions */
 int /*<<< orphan*/  PVM ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__*,char const*,int /*<<< orphan*/ ) ; 

void
FUNC2(vm_object_t obj, const char *wmesg)
{

	FUNC0(obj);

	if (obj->busy)
		FUNC1(&obj->busy, wmesg, PVM);
}