#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_5__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  vm_page_t ;
typedef  TYPE_3__* vm_object_t ;
struct sglist {int dummy; } ;
struct TYPE_9__ {int /*<<< orphan*/  q; } ;
struct TYPE_6__ {int /*<<< orphan*/  sgp_pglist; } ;
struct TYPE_7__ {TYPE_1__ sgp; } ;
struct TYPE_8__ {int /*<<< orphan*/  type; struct sglist* handle; TYPE_2__ un_pager; } ;

/* Variables and functions */
 int /*<<< orphan*/  OBJT_DEAD ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_5__ plinks ; 
 int /*<<< orphan*/  FUNC2 (struct sglist*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC4(vm_object_t object)
{
	struct sglist *sg;
	vm_page_t m;

	/*
	 * Free up our fake pages.
	 */
	while ((m = FUNC0(&object->un_pager.sgp.sgp_pglist)) != 0) {
		FUNC1(&object->un_pager.sgp.sgp_pglist, m, plinks.q);
		FUNC3(m);
	}
	
	sg = object->handle;
	FUNC2(sg);
	object->handle = NULL;
	object->type = OBJT_DEAD;
}