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
typedef  int vm_offset_t ;
typedef  union savefpu {int dummy; } savefpu ;
struct thread {int td_kstack; int td_kstack_pages; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int PAGE_SIZE ; 
 int XSAVE_AREA_ALIGN ; 
 int /*<<< orphan*/  cpu_max_ext_state_size ; 
 int FUNC1 (int /*<<< orphan*/ ,int) ; 

union savefpu *
FUNC2(struct thread *td)
{
	vm_offset_t p;

	p = td->td_kstack + td->td_kstack_pages * PAGE_SIZE -
	    FUNC1(cpu_max_ext_state_size, XSAVE_AREA_ALIGN);
	FUNC0((p % XSAVE_AREA_ALIGN) == 0, ("Unaligned pcb_user_save area"));
	return ((union savefpu *)p);
}