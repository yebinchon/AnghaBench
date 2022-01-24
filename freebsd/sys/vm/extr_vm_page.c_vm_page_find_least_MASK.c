#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ vm_pindex_t ;
typedef  TYPE_1__* vm_page_t ;
typedef  TYPE_2__* vm_object_t ;
struct TYPE_9__ {int /*<<< orphan*/  rtree; int /*<<< orphan*/  memq; } ;
struct TYPE_8__ {scalar_t__ pindex; } ;

/* Variables and functions */
 TYPE_1__* FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 TYPE_1__* FUNC2 (int /*<<< orphan*/ *,scalar_t__) ; 

vm_page_t
FUNC3(vm_object_t object, vm_pindex_t pindex)
{
	vm_page_t m;

	FUNC1(object);
	if ((m = FUNC0(&object->memq)) != NULL && m->pindex < pindex)
		m = FUNC2(&object->rtree, pindex);
	return (m);
}