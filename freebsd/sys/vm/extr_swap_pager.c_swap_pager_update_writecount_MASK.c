#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ vm_ooffset_t ;
typedef  scalar_t__ vm_offset_t ;
typedef  TYPE_3__* vm_object_t ;
struct TYPE_7__ {int /*<<< orphan*/  writemappings; } ;
struct TYPE_8__ {TYPE_1__ swp; } ;
struct TYPE_9__ {int flags; TYPE_2__ un_pager; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int OBJ_NOSPLIT ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*) ; 

__attribute__((used)) static void
FUNC3(vm_object_t object, vm_offset_t start,
    vm_offset_t end)
{

	FUNC1(object);
	FUNC0((object->flags & OBJ_NOSPLIT) != 0,
	    ("Splittable object with writecount"));
	object->un_pager.swp.writemappings += (vm_ooffset_t)end - start;
	FUNC2(object);
}