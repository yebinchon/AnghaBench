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
struct TYPE_2__ {int Uid; int Gpe; char* Id; int /*<<< orphan*/  Data; int /*<<< orphan*/  Control; } ;
typedef  int /*<<< orphan*/  ACPI_TABLE_HEADER ;
typedef  TYPE_1__ ACPI_TABLE_ECDT ;

/* Variables and functions */
 char* BEGIN_COMMENT ; 
 char* END_COMMENT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (char*,...) ; 

__attribute__((used)) static void
FUNC3(ACPI_TABLE_HEADER *sdp)
{
	ACPI_TABLE_ECDT *ecdt;

	FUNC2(BEGIN_COMMENT);
	FUNC1(sdp);
	ecdt = (ACPI_TABLE_ECDT *)sdp;
	FUNC2("\tEC_CONTROL=");
	FUNC0(&ecdt->Control);
	FUNC2("\n\tEC_DATA=");
	FUNC0(&ecdt->Data);
	FUNC2("\n\tUID=%#x, ", ecdt->Uid);
	FUNC2("GPE_BIT=%#x\n", ecdt->Gpe);
	FUNC2("\tEC_ID=%s\n", ecdt->Id);
	FUNC2(END_COMMENT);
}