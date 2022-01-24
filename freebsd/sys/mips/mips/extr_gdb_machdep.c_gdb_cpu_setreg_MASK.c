#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  void* register_t ;
struct TYPE_4__ {void* pc; } ;
struct TYPE_3__ {void** pcb_context; } ;

/* Variables and functions */
#define  GDB_REG_PC 128 
 int /*<<< orphan*/  curthread ; 
 TYPE_2__* kdb_frame ; 
 TYPE_1__* kdb_thrctx ; 
 int /*<<< orphan*/  kdb_thread ; 

void
FUNC0(int regnum, void *val)
{
	switch (regnum) {
	case GDB_REG_PC:
		kdb_thrctx->pcb_context[10] = *(register_t *)val;
		if (kdb_thread == curthread)
			kdb_frame->pc = *(register_t *)val;
	}
}