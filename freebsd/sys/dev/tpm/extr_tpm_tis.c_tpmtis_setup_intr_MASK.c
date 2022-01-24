#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int uint32_t ;
struct tpm_sc {int /*<<< orphan*/  dev; } ;
typedef  int /*<<< orphan*/  ACPI_STATUS ;
typedef  int /*<<< orphan*/  ACPI_HANDLE ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,void*) ; 
 int FUNC2 (struct tpm_sc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TPM_INT_ENABLE ; 
 int TPM_INT_ENABLE_CMD_RDY ; 
 int TPM_INT_ENABLE_DATA_AVAIL ; 
 int TPM_INT_ENABLE_GLOBAL_ENABLE ; 
 int TPM_INT_ENABLE_LOC_CHANGE ; 
 int TPM_INT_ENABLE_STS_VALID ; 
 int /*<<< orphan*/  FUNC3 (struct tpm_sc*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  tpmtis_get_SIRQ_channel ; 
 int /*<<< orphan*/  FUNC5 (struct tpm_sc*) ; 
 int /*<<< orphan*/  FUNC6 (struct tpm_sc*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static bool
FUNC7(struct tpm_sc *sc)
{
	ACPI_STATUS status;
	ACPI_HANDLE handle;
	uint32_t irq_mask;

	handle = FUNC4(sc->dev);

	if(!FUNC6(sc, 0))
		return (false);

	irq_mask = FUNC2(sc, TPM_INT_ENABLE);
	irq_mask |= TPM_INT_ENABLE_GLOBAL_ENABLE |
	    TPM_INT_ENABLE_DATA_AVAIL |
	    TPM_INT_ENABLE_LOC_CHANGE |
	    TPM_INT_ENABLE_CMD_RDY |
	    TPM_INT_ENABLE_STS_VALID;
	FUNC3(sc, TPM_INT_ENABLE, irq_mask);

	status = FUNC1(handle, "_CRS",
	    tpmtis_get_SIRQ_channel, (void *)sc);

	FUNC5(sc);

	return (FUNC0(status));
}