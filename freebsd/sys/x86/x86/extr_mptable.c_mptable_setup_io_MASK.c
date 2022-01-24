#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int u_char ;
typedef  int /*<<< orphan*/  bus_datum ;
struct TYPE_5__ {int /*<<< orphan*/  bus_type; } ;
struct TYPE_4__ {int mpfb2; } ;

/* Variables and functions */
 int IOAPIC_MAX_ID ; 
 int MPFB2_IMCR_PRESENT ; 
 int /*<<< orphan*/  M_MPTABLE ; 
 int /*<<< orphan*/  M_WAITOK ; 
 int /*<<< orphan*/  NOBUS ; 
 TYPE_2__* busses ; 
 int FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ ** ioapics ; 
 TYPE_2__* FUNC2 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_1__* mpfps ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int mptable_maxbusid ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (int,int) ; 

__attribute__((used)) static int
FUNC8(void)
{
	int i;
	u_char byte;

	/* First, we count individual items and allocate arrays. */
	FUNC3();
	busses = FUNC2((mptable_maxbusid + 1) * sizeof(bus_datum), M_MPTABLE,
	    M_WAITOK);
	for (i = 0; i <= mptable_maxbusid; i++)
		busses[i].bus_type = NOBUS;

	/* Second, we run through adding I/O APIC's and buses. */
	FUNC4();	

	/* Third, we run through the table tweaking interrupt sources. */
	FUNC5();

	/* Fourth, we register all the I/O APIC's. */
	for (i = 0; i <= IOAPIC_MAX_ID; i++)
		if (ioapics[i] != NULL)
			FUNC1(ioapics[i]);

	/* Fifth, we setup data structures to handle PCI interrupt routing. */
	FUNC6();

	/* Finally, we throw the switch to enable the I/O APIC's. */
	if (mpfps->mpfb2 & MPFB2_IMCR_PRESENT) {
		FUNC7(0x22, 0x70);	/* select IMCR */
		byte = FUNC0(0x23);	/* current contents */
		byte |= 0x01;		/* mask external INTR */
		FUNC7(0x23, byte);	/* disconnect 8259s/NMI */
	}

	return (0);
}