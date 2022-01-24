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
typedef  int /*<<< orphan*/  vm_pindex_t ;
typedef  int /*<<< orphan*/  vm_page_t ;
typedef  TYPE_1__* vm_object_t ;
struct TYPE_5__ {int /*<<< orphan*/  rtree; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int FUNC1 (int /*<<< orphan*/ ,TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

int
FUNC3(vm_page_t m, vm_object_t object, vm_pindex_t pindex)
{
	vm_page_t mpred;

	FUNC0(object);
	mpred = FUNC2(&object->rtree, pindex);
	return (FUNC1(m, object, pindex, mpred));
}