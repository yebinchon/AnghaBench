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
typedef  int uint64_t ;
struct tpm_sc {int interrupts; int /*<<< orphan*/  transmit; int /*<<< orphan*/  dev; int /*<<< orphan*/ * mem_res; scalar_t__ mem_rid; } ;
struct tpmcrb_sc {int rsp_off; int cmd_off; scalar_t__ cmd_buf_size; scalar_t__ rsp_buf_size; struct tpm_sc base; } ;
typedef  int /*<<< orphan*/  device_t ;
typedef  int /*<<< orphan*/  ACPI_STATUS ;
typedef  int /*<<< orphan*/  ACPI_HANDLE ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct tpm_sc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,void*) ; 
 int ENXIO ; 
 void* FUNC3 (struct tpm_sc*,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct tpm_sc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  RF_ACTIVE ; 
 int /*<<< orphan*/  SYS_RES_MEMORY ; 
 int /*<<< orphan*/  TPM_CRB_CTRL_CMD_HADDR ; 
 int /*<<< orphan*/  TPM_CRB_CTRL_CMD_LADDR ; 
 int /*<<< orphan*/  TPM_CRB_CTRL_CMD_SIZE ; 
 int /*<<< orphan*/  TPM_CRB_CTRL_RSP_ADDR ; 
 int /*<<< orphan*/  TPM_CRB_CTRL_RSP_HADDR ; 
 int /*<<< orphan*/  TPM_CRB_CTRL_RSP_SIZE ; 
 int /*<<< orphan*/  TPM_CRB_INT_ENABLE ; 
 int /*<<< orphan*/  TPM_CRB_INT_ENABLE_BIT ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ *) ; 
 struct tpmcrb_sc* FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,char*) ; 
 int FUNC10 (struct tpm_sc*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  tpmcrb_fix_buff_offsets ; 
 int /*<<< orphan*/  FUNC12 (struct tpm_sc*) ; 
 int /*<<< orphan*/  FUNC13 (struct tpm_sc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  tpmcrb_transmit ; 

__attribute__((used)) static int
FUNC14(device_t dev)
{
	struct tpmcrb_sc *crb_sc;
	struct tpm_sc *sc;
	ACPI_HANDLE handle;
	ACPI_STATUS status;
	int result;

	crb_sc = FUNC8(dev);
	sc = &crb_sc->base;
	handle = FUNC5(dev);

	sc->dev = dev;

	sc->mem_rid = 0;
	sc->mem_res = FUNC6(dev, SYS_RES_MEMORY, &sc->mem_rid,
					     RF_ACTIVE);
	if (sc->mem_res == NULL)
		return (ENXIO);

	if(!FUNC13(sc, 0)) {
		FUNC7(dev, SYS_RES_MEMORY,
		    sc->mem_rid, sc->mem_res);
		return (ENXIO);
	}

	/*
	 * Disable all interrupts for now, since I don't have a device that
	 * works in CRB mode and supports them.
	 */
	FUNC1(sc, TPM_CRB_INT_ENABLE, ~TPM_CRB_INT_ENABLE_BIT);
	sc->interrupts = false;

	/*
	 * Read addresses of Tx/Rx buffers and their sizes. Note that they
	 * can be implemented by a single buffer. Also for some reason CMD
	 * addr is stored in two 4 byte neighboring registers, whereas RSP is
	 * stored in a single 8 byte one.
	 */
#ifdef __amd64__
	crb_sc->rsp_off = FUNC4(sc, TPM_CRB_CTRL_RSP_ADDR);
#else
	crb_sc->rsp_off = RD4(sc, TPM_CRB_CTRL_RSP_ADDR);
	crb_sc->rsp_off |= ((uint64_t) RD4(sc, TPM_CRB_CTRL_RSP_HADDR) << 32);
#endif
	crb_sc->cmd_off = FUNC3(sc, TPM_CRB_CTRL_CMD_LADDR);
	crb_sc->cmd_off |= ((uint64_t) FUNC3(sc, TPM_CRB_CTRL_CMD_HADDR) << 32);
	crb_sc->cmd_buf_size = FUNC3(sc, TPM_CRB_CTRL_CMD_SIZE);
	crb_sc->rsp_buf_size = FUNC3(sc, TPM_CRB_CTRL_RSP_SIZE);

	FUNC12(sc);

	/* Emulator returns address in acpi space instead of an offset */
	status = FUNC2(handle, "_CRS", tpmcrb_fix_buff_offsets,
		    (void *)crb_sc);
	if (FUNC0(status)) {
		FUNC11(dev);
		return (ENXIO);
	}

	if (crb_sc->rsp_off == crb_sc->cmd_off) {
		/*
		 * If Tx/Rx buffers are implemented as one they have to be of
		 * same size
		 */
		if (crb_sc->cmd_buf_size != crb_sc->rsp_buf_size) {
			FUNC9(sc->dev,
			    "Overlapping Tx/Rx buffers have different sizes\n");
			FUNC11(dev);
			return (ENXIO);
		}
	}

	sc->transmit = tpmcrb_transmit;

	result = FUNC10(sc);
	if (result != 0)
		FUNC11(dev);

	return (result);
}