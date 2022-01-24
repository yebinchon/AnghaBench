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
typedef  int /*<<< orphan*/  vmem_t ;
struct vmem_freelist {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  bt_size; } ;
typedef  TYPE_1__ bt_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct vmem_freelist*,TYPE_1__*,int /*<<< orphan*/ ) ; 
 struct vmem_freelist* FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  bt_freelist ; 

__attribute__((used)) static void
FUNC2(vmem_t *vm, bt_t *bt)
{
	struct vmem_freelist *list;

	list = FUNC1(vm, bt->bt_size);
	FUNC0(list, bt, bt_freelist);
}