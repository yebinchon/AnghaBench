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
typedef  int /*<<< orphan*/  uintmax_t ;
typedef  size_t UINT64 ;
struct TYPE_2__ {size_t LocalityCount; int* Entry; } ;
typedef  TYPE_1__ ACPI_TABLE_SLIT ;
typedef  int /*<<< orphan*/  ACPI_TABLE_HEADER ;

/* Variables and functions */
 char* BEGIN_COMMENT ; 
 char* END_COMMENT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 

__attribute__((used)) static void
FUNC2(ACPI_TABLE_HEADER *sdp)
{
	ACPI_TABLE_SLIT *slit;
	UINT64 i, j;

	FUNC1(BEGIN_COMMENT);
	FUNC0(sdp);
	slit = (ACPI_TABLE_SLIT *)sdp;
	FUNC1("\tLocality Count=%ju\n", (uintmax_t)slit->LocalityCount);
	FUNC1("\n\t      ");
	for (i = 0; i < slit->LocalityCount; i++)
		FUNC1(" %3ju", (uintmax_t)i);
	FUNC1("\n\t     +");
	for (i = 0; i < slit->LocalityCount; i++)
		FUNC1("----");
	FUNC1("\n");
	for (i = 0; i < slit->LocalityCount; i++) {
		FUNC1("\t %3ju |", (uintmax_t)i);
		for (j = 0; j < slit->LocalityCount; j++)
			FUNC1(" %3d",
			    slit->Entry[i * slit->LocalityCount + j]);
		FUNC1("\n");
	}
	FUNC1(END_COMMENT);
}