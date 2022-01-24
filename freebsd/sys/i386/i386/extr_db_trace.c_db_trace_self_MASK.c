#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct i386_frame {struct i386_frame* f_frame; int /*<<< orphan*/  f_retaddr; } ;
typedef  scalar_t__ register_t ;
typedef  scalar_t__ db_addr_t ;

/* Variables and functions */
 int /*<<< orphan*/  curthread ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct i386_frame*,scalar_t__,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC1 (int,int,int) ; 

void
FUNC2(void)
{
	struct i386_frame *frame;
	db_addr_t callpc;
	register_t ebp;

	__asm __volatile("movl %%ebp,%0" : "=r" (ebp));
	frame = (struct i386_frame *)ebp;
	callpc = (db_addr_t)FUNC1((int)&frame->f_retaddr, 4, false);
	frame = frame->f_frame;
	FUNC0(curthread, NULL, frame, callpc, 0, -1);
}