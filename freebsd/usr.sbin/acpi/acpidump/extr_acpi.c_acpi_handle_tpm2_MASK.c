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
struct TYPE_2__ {int StartMethod; int /*<<< orphan*/  ControlAddress; } ;
typedef  TYPE_1__ ACPI_TABLE_TPM2 ;
typedef  int /*<<< orphan*/  ACPI_TABLE_HEADER ;

/* Variables and functions */
 char* BEGIN_COMMENT ; 
 char* END_COMMENT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 

__attribute__((used)) static void FUNC2(ACPI_TABLE_HEADER *sdp)
{
	ACPI_TABLE_TPM2 *tpm2;
	
	FUNC1 (BEGIN_COMMENT);
	FUNC0(sdp);
	tpm2 = (ACPI_TABLE_TPM2 *) sdp;
	FUNC1 ("\t\tControlArea=%jx\n", tpm2->ControlAddress);
	FUNC1 ("\t\tStartMethod=%x\n", tpm2->StartMethod);	
	FUNC1 (END_COMMENT);
}