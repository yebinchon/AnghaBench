#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct region_descriptor {scalar_t__ rd_base; scalar_t__ rd_limit; } ;
struct TYPE_2__ {int RESCFG; } ;

/* Variables and functions */
 scalar_t__ CPU_GEODE1100 ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int IO_KBD ; 
 int /*<<< orphan*/  FUNC1 () ; 
 scalar_t__ cpu ; 
 int /*<<< orphan*/  FUNC2 () ; 
 TYPE_1__* elan_mmcr ; 
 int FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (struct region_descriptor*) ; 
 int /*<<< orphan*/  FUNC5 (int,int) ; 
 int /*<<< orphan*/  FUNC6 (int,int) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 

__attribute__((used)) static void
FUNC8(void)
{
	struct region_descriptor null_idt;
	int b;

	FUNC2();
#ifdef CPU_ELAN
	if (elan_mmcr != NULL)
		elan_mmcr->RESCFG = 1;
#endif
#ifdef __i386__
	if (cpu == CPU_GEODE1100) {
		/* Attempt Geode's own reset */
		outl(0xcf8, 0x80009044ul);
		outl(0xcfc, 0xf);
	}
#endif
#if !defined(BROKEN_KEYBOARD_RESET)
	/*
	 * Attempt to do a CPU reset via the keyboard controller,
	 * do not turn off GateA20, as any machine that fails
	 * to do the reset here would then end up in no man's land.
	 */
	FUNC5(IO_KBD + 4, 0xFE);
	FUNC0(500000);	/* wait 0.5 sec to see if that did it */
#endif

	/*
	 * Attempt to force a reset via the Reset Control register at
	 * I/O port 0xcf9.  Bit 2 forces a system reset when it
	 * transitions from 0 to 1.  Bit 1 selects the type of reset
	 * to attempt: 0 selects a "soft" reset, and 1 selects a
	 * "hard" reset.  We try a "hard" reset.  The first write sets
	 * bit 1 to select a "hard" reset and clears bit 2.  The
	 * second write forces a 0 -> 1 transition in bit 2 to trigger
	 * a reset.
	 */
	FUNC5(0xcf9, 0x2);
	FUNC5(0xcf9, 0x6);
	FUNC0(500000);  /* wait 0.5 sec to see if that did it */

	/*
	 * Attempt to force a reset via the Fast A20 and Init register
	 * at I/O port 0x92.  Bit 1 serves as an alternate A20 gate.
	 * Bit 0 asserts INIT# when set to 1.  We are careful to only
	 * preserve bit 1 while setting bit 0.  We also must clear bit
	 * 0 before setting it if it isn't already clear.
	 */
	b = FUNC3(0x92);
	if (b != 0xff) {
		if ((b & 0x1) != 0)
			FUNC5(0x92, b & 0xfe);
		FUNC5(0x92, b | 0x1);
		FUNC0(500000);  /* wait 0.5 sec to see if that did it */
	}

	FUNC7("No known reset method worked, attempting CPU shutdown\n");
	FUNC0(1000000); /* wait 1 sec for printf to complete */

	/* Wipe the IDT. */
	null_idt.rd_limit = 0;
	null_idt.rd_base = 0;
	FUNC4(&null_idt);

	/* "good night, sweet prince .... <THUNK!>" */
	FUNC1();

	/* NOTREACHED */
	while(1);
}