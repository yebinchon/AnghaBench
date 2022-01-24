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
typedef  int /*<<< orphan*/  uintmax_t ;
struct TYPE_4__ {int Length; } ;
struct TYPE_5__ {int Segment; TYPE_1__ Header; scalar_t__ EndAddress; scalar_t__ BaseAddress; } ;
typedef  TYPE_2__ ACPI_DMAR_RESERVED_MEMORY ;

/* Variables and functions */
 int FUNC0 (char*,int) ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 

__attribute__((used)) static void
FUNC2(ACPI_DMAR_RESERVED_MEMORY *rmrr)
{
	char *cp;
	int remaining, consumed;

	FUNC1("\n");
	FUNC1("\tType=RMRR\n");
	FUNC1("\tLength=%d\n", rmrr->Header.Length);
	FUNC1("\tSegment=%d\n", rmrr->Segment);
	FUNC1("\tBaseAddress=0x%016jx\n", (uintmax_t)rmrr->BaseAddress);
	FUNC1("\tLimitAddress=0x%016jx\n", (uintmax_t)rmrr->EndAddress);

	remaining = rmrr->Header.Length - sizeof(ACPI_DMAR_RESERVED_MEMORY);
	if (remaining > 0)
		FUNC1("\tDevice Scope:");
	while (remaining > 0) {
		cp = (char *)rmrr + rmrr->Header.Length - remaining;
		consumed = FUNC0(cp, remaining);
		if (consumed <= 0)
			break;
		else
			remaining -= consumed;
	}
}