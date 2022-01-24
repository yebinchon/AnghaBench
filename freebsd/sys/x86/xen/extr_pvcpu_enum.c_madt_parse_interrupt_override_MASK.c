#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_4__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  enum intr_trigger { ____Placeholder_intr_trigger } intr_trigger ;
typedef  enum intr_polarity { ____Placeholder_intr_polarity } intr_polarity ;
struct TYPE_6__ {int SciInterrupt; } ;
struct TYPE_5__ {int SourceIrq; int GlobalIrq; } ;
typedef  TYPE_1__ ACPI_MADT_INTERRUPT_OVERRIDE ;

/* Variables and functions */
 int ACPI_Q_MADT_IRQ0 ; 
 TYPE_4__ AcpiGbl_FADT ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int acpi_quirks ; 
 scalar_t__ bootverbose ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int*,int*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int FUNC4 (int,int,int) ; 

__attribute__((used)) static void
FUNC5(ACPI_MADT_INTERRUPT_OVERRIDE *intr)
{
	enum intr_trigger trig;
	enum intr_polarity pol;
	int ret;

	if (acpi_quirks & ACPI_Q_MADT_IRQ0 && intr->SourceIrq == 0 &&
	    intr->GlobalIrq == 2) {
		if (bootverbose)
			FUNC3("MADT: Skipping timer override\n");
		return;
	}

	FUNC1(intr, &trig, &pol);

	/* Remap the IRQ if it is mapped to a different interrupt vector. */
	if (intr->SourceIrq != intr->GlobalIrq && intr->GlobalIrq > 15 &&
	    intr->SourceIrq == AcpiGbl_FADT.SciInterrupt)
		/*
		 * If the SCI is remapped to a non-ISA global interrupt,
		 * then override the vector we use to setup.
		 */
		FUNC0(intr->GlobalIrq);

	/* Register the IRQ with the polarity and trigger mode found. */
	ret = FUNC4(intr->GlobalIrq, trig, pol);
	if (ret != 0)
		FUNC2("Unable to register interrupt override");
}