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
struct TYPE_4__ {int Flags; } ;
struct TYPE_5__ {int Residency; int Latency; scalar_t__ CounterFrequency; int /*<<< orphan*/  ResidencyCounter; TYPE_1__ Header; int /*<<< orphan*/  EntryTrigger; } ;
typedef  TYPE_2__ ACPI_LPIT_NATIVE ;

/* Variables and functions */
 int ACPI_LPIT_NO_COUNTER ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 

__attribute__((used)) static void
FUNC2(ACPI_LPIT_NATIVE *nl)
{
	FUNC1("\tEntryTrigger=");
	FUNC0(&nl->EntryTrigger);
	FUNC1("\tResidency=%u\n", nl->Residency);
	FUNC1("\tLatency=%u\n", nl->Latency);
	if (nl->Header.Flags & ACPI_LPIT_NO_COUNTER)
		FUNC1("\tResidencyCounter=Not Present");
	else {
		FUNC1("\tResidencyCounter=");
		FUNC0(&nl->ResidencyCounter);
	}
	if (nl->CounterFrequency)
		FUNC1("\tCounterFrequency=%ju\n", nl->CounterFrequency);
	else
		FUNC1("\tCounterFrequency=TSC\n");
}