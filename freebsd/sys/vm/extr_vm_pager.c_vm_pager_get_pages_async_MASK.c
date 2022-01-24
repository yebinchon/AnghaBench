#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_5__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  vm_page_t ;
typedef  TYPE_1__* vm_object_t ;
typedef  int /*<<< orphan*/  pgo_getpages_iodone_t ;
struct TYPE_7__ {int (* pgo_getpages_async ) (TYPE_1__*,int /*<<< orphan*/ *,int,int*,int*,int /*<<< orphan*/ ,void*) ;} ;
struct TYPE_6__ {size_t type; } ;

/* Variables and functions */
 TYPE_5__** pagertab ; 
 int FUNC0 (TYPE_1__*,int /*<<< orphan*/ *,int,int*,int*,int /*<<< orphan*/ ,void*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ *,int) ; 

int
FUNC2(vm_object_t object, vm_page_t *m, int count,
    int *rbehind, int *rahead, pgo_getpages_iodone_t iodone, void *arg)
{

	FUNC1(object, m, count);

	return ((*pagertab[object->type]->pgo_getpages_async)(object, m,
	    count, rbehind, rahead, iodone, arg));
}