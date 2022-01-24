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
struct TYPE_2__ {int Length; int Type; } ;
typedef  TYPE_1__ ACPI_DMAR_HEADER ;

/* Variables and functions */
#define  ACPI_DMAR_TYPE_HARDWARE_AFFINITY 131 
#define  ACPI_DMAR_TYPE_HARDWARE_UNIT 130 
#define  ACPI_DMAR_TYPE_RESERVED_MEMORY 129 
#define  ACPI_DMAR_TYPE_ROOT_ATS 128 
 int /*<<< orphan*/  FUNC0 (void*) ; 
 int /*<<< orphan*/  FUNC1 (void*) ; 
 int /*<<< orphan*/  FUNC2 (void*) ; 
 int /*<<< orphan*/  FUNC3 (void*) ; 
 int /*<<< orphan*/  FUNC4 (char*,...) ; 

__attribute__((used)) static int
FUNC5(void *addr, int remaining)
{
	ACPI_DMAR_HEADER *hdr = addr;

	if (remaining < (int)sizeof(ACPI_DMAR_HEADER))
		return (-1);

	if (remaining < hdr->Length)
		return (-1);

	switch (hdr->Type) {
	case ACPI_DMAR_TYPE_HARDWARE_UNIT:
		FUNC1(addr);
		break;
	case ACPI_DMAR_TYPE_RESERVED_MEMORY:
		FUNC3(addr);
		break;
	case ACPI_DMAR_TYPE_ROOT_ATS:
		FUNC0(addr);
		break;
	case ACPI_DMAR_TYPE_HARDWARE_AFFINITY:
		FUNC2(addr);
		break;
	default:
		FUNC4("\n");
		FUNC4("\tType=%d\n", hdr->Type);
		FUNC4("\tLength=%d\n", hdr->Length);
		break;
	}
	return (hdr->Length);
}