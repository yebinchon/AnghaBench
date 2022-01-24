#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_5__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u_int ;
struct TYPE_7__ {int SciInterrupt; } ;
struct TYPE_6__ {int /*<<< orphan*/ * io_apic; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  ACPI_INTR_APIC ; 
 char* FUNC1 (int) ; 
 TYPE_5__ AcpiGbl_FADT ; 
 int /*<<< orphan*/  INTR_POLARITY_LOW ; 
 int /*<<< orphan*/  INTR_TRIGGER_LEVEL ; 
 int IOAPIC_MAX_ID ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  M_MADT ; 
 int M_WAITOK ; 
 int M_ZERO ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (void*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (void*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_1__* ioapics ; 
 TYPE_1__* lapics ; 
 scalar_t__ FUNC9 (int,void**,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  madt_found_sci_override ; 
 int /*<<< orphan*/  madt_parse_apics ; 
 int /*<<< orphan*/  madt_parse_ints ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC11 (int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC12 (char*) ; 
 int /*<<< orphan*/  FUNC13 (char*,...) ; 

__attribute__((used)) static int
FUNC14(void)
{
	void *ioapic;
	u_int pin;
	int i;

	FUNC2(lapics != NULL, ("local APICs not initialized"));

	/* Try to initialize ACPI so that we can access the FADT. */
	i = FUNC4();
	if (FUNC0(i)) {
		FUNC13("MADT: ACPI Startup failed with %s\n",
		    FUNC1(i));
		FUNC13("Try disabling either ACPI or apic support.\n");
		FUNC12("Using MADT but ACPI doesn't work");
	}

	ioapics = FUNC11(sizeof(*ioapics) * (IOAPIC_MAX_ID + 1), M_MADT,
	    M_WAITOK | M_ZERO);

	/* First, we run through adding I/O APIC's. */
	FUNC10(madt_parse_apics, NULL);

	/* Second, we run through the table tweaking interrupt sources. */
	FUNC10(madt_parse_ints, NULL);

	/*
	 * If there was not an explicit override entry for the SCI,
	 * force it to use level trigger and active-low polarity.
	 */
	if (!madt_found_sci_override) {
		if (FUNC9(AcpiGbl_FADT.SciInterrupt, &ioapic,
		    &pin) != 0)
			FUNC13("MADT: Could not find APIC for SCI IRQ %u\n",
			    AcpiGbl_FADT.SciInterrupt);
		else {
			FUNC13(
	"MADT: Forcing active-low polarity and level trigger for SCI\n");
			FUNC7(ioapic, pin, INTR_POLARITY_LOW);
			FUNC8(ioapic, pin, INTR_TRIGGER_LEVEL);
		}
	}

	/* Third, we register all the I/O APIC's. */
	for (i = 0; i <= IOAPIC_MAX_ID; i++)
		if (ioapics[i].io_apic != NULL)
			FUNC6(ioapics[i].io_apic);

	/* Finally, we throw the switch to enable the I/O APIC's. */
	FUNC3(ACPI_INTR_APIC);

	FUNC5(ioapics, M_MADT);
	ioapics = NULL;

	/* NB: this is the last use of the lapics array. */
	FUNC5(lapics, M_MADT);
	lapics = NULL;

	return (0);
}