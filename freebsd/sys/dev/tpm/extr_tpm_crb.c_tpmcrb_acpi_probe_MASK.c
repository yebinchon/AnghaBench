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
typedef  int /*<<< orphan*/  device_t ;
struct TYPE_2__ {scalar_t__ StartMethod; } ;
typedef  TYPE_1__ ACPI_TABLE_TPM23 ;
typedef  int /*<<< orphan*/  ACPI_TABLE_HEADER ;
typedef  int /*<<< orphan*/  ACPI_STATUS ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  ACPI_SIG_TPM2 ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ **) ; 
 int ENXIO ; 
 scalar_t__ TPM2_START_METHOD_CRB ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  tpmcrb_ids ; 

__attribute__((used)) static int
FUNC5(device_t dev)
{
	int err;
	ACPI_TABLE_TPM23 *tbl;
	ACPI_STATUS status;
	err = FUNC1(FUNC3(dev), dev, tpmcrb_ids, NULL);
	if (err > 0)
		return (err);
	/*Find TPM2 Header*/
	status = FUNC2(ACPI_SIG_TPM2, 1, (ACPI_TABLE_HEADER **) &tbl);
	if(FUNC0(status) ||
	   tbl->StartMethod != TPM2_START_METHOD_CRB)
		err = ENXIO;

	FUNC4(dev, "Trusted Platform Module 2.0, CRB mode");
	return (err);
}