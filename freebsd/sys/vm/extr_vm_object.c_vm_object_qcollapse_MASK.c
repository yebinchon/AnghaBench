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
typedef  TYPE_1__* vm_object_t ;
struct TYPE_5__ {int ref_count; struct TYPE_5__* backing_object; } ;

/* Variables and functions */
 int /*<<< orphan*/  OBSC_COLLAPSE_NOWAIT ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC2(vm_object_t object)
{
	vm_object_t backing_object = object->backing_object;

	FUNC0(object);
	FUNC0(backing_object);

	if (backing_object->ref_count != 1)
		return;

	FUNC1(object, OBSC_COLLAPSE_NOWAIT);
}