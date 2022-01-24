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
typedef  int u_int ;

/* Variables and functions */
 int /*<<< orphan*/  GSEL_APIC ; 
 int IDT_DTRACE_RET ; 
 int IDT_SYSCALL ; 
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int /*<<< orphan*/  SDT_APIC ; 
 int /*<<< orphan*/  SEL_KPL ; 
 int /*<<< orphan*/ ** ioint_handlers ; 
 int /*<<< orphan*/ ** ioint_pti_handlers ; 
 scalar_t__ pti ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC2(u_int apic_id, u_int vector)
{

	FUNC0(vector != IDT_SYSCALL, ("Attempt to overwrite syscall entry"));
	FUNC0(ioint_handlers[vector / 32] != NULL,
	    ("No ISR handler for vector %u", vector));
#ifdef KDTRACE_HOOKS
	KASSERT(vector != IDT_DTRACE_RET,
	    ("Attempt to overwrite DTrace entry"));
#endif
	FUNC1(vector, (pti ? ioint_pti_handlers : ioint_handlers)[vector / 32],
	    SDT_APIC, SEL_KPL, GSEL_APIC);
}