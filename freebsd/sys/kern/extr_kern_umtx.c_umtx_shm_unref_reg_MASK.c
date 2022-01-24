#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_2__* vm_object_t ;
struct umtx_shm_reg {TYPE_1__* ushm_obj; } ;
struct TYPE_6__ {int /*<<< orphan*/  flags; } ;
struct TYPE_5__ {TYPE_2__* shm_object; } ;

/* Variables and functions */
 int /*<<< orphan*/  OBJ_UMTXDEAD ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct umtx_shm_reg*) ; 
 int /*<<< orphan*/  umtx_shm_lock ; 
 int FUNC5 (struct umtx_shm_reg*,int) ; 

__attribute__((used)) static void
FUNC6(struct umtx_shm_reg *reg, bool force)
{
	vm_object_t object;
	bool dofree;

	if (force) {
		object = reg->ushm_obj->shm_object;
		FUNC0(object);
		object->flags |= OBJ_UMTXDEAD;
		FUNC1(object);
	}
	FUNC2(&umtx_shm_lock);
	dofree = FUNC5(reg, force);
	FUNC3(&umtx_shm_lock);
	if (dofree)
		FUNC4(reg);
}