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
struct TYPE_8__ {int /*<<< orphan*/  vm_inuse; int /*<<< orphan*/  vm_nbusytag; } ;
typedef  TYPE_1__ vmem_t ;
struct vmem_hashlist {int dummy; } ;
struct TYPE_9__ {scalar_t__ bt_type; scalar_t__ bt_size; int /*<<< orphan*/  bt_start; } ;
typedef  TYPE_2__ bt_t ;

/* Variables and functions */
 scalar_t__ BT_TYPE_BUSY ; 
 int /*<<< orphan*/  FUNC0 (struct vmem_hashlist*,TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 struct vmem_hashlist* FUNC3 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  bt_hashlist ; 

__attribute__((used)) static void
FUNC4(vmem_t *vm, bt_t *bt)
{
	struct vmem_hashlist *list;

	FUNC2(vm);
	FUNC1(bt->bt_type == BT_TYPE_BUSY);

	list = FUNC3(vm, bt->bt_start);
	FUNC0(list, bt, bt_hashlist);
	vm->vm_nbusytag++;
	vm->vm_inuse += bt->bt_size;
}