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
typedef  int uint8_t ;
typedef  int uint32_t ;
struct octeon_device {int pf_num; int pcie_port; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int LIO_CN23XX_MAC_INT_OFFSET ; 
 int LIO_CN23XX_OQ_OFFSET ; 
 int LIO_CN23XX_PF_INT_OFFSET ; 
 int LIO_CN23XX_PF_MAX_INPUT_QUEUES ; 
 int LIO_CN23XX_PF_MAX_OUTPUT_QUEUES ; 
 int LIO_CN23XX_SLI_GBL_CONTROL ; 
 int FUNC1 (int) ; 
 int FUNC2 (int) ; 
 int FUNC3 (int) ; 
 int FUNC4 (int) ; 
 int FUNC5 (int) ; 
 int FUNC6 (int,int) ; 
 int FUNC7 (int,int) ; 
 int FUNC8 (int) ; 
 int FUNC9 (int) ; 
 int FUNC10 (int) ; 
 int FUNC11 (int) ; 
 int FUNC12 (int) ; 
 int FUNC13 (int) ; 
 int FUNC14 (int) ; 
 int LIO_CN23XX_SLI_OQ_WMARK ; 
 int LIO_CN23XX_SLI_OUT_BP_EN2_W1S ; 
 int LIO_CN23XX_SLI_OUT_BP_EN_W1S ; 
 int LIO_CN23XX_SLI_PKT_CNT_INT ; 
 int LIO_CN23XX_SLI_PKT_IOQ_RING_RST ; 
 int FUNC15 (int,int) ; 
 int LIO_CN23XX_SLI_PKT_TIME_INT ; 
 int /*<<< orphan*/  FUNC16 (struct octeon_device*,int) ; 
 scalar_t__ FUNC17 (char*,char*,...) ; 

__attribute__((used)) static int
FUNC18(char *s, struct octeon_device *oct)
{
	uint32_t	reg;
	int	i, len = 0;
	uint8_t	pf_num = oct->pf_num;

	/* PCI  Window Registers */

	len += FUNC17(s + len, "\t Octeon CSR Registers\n\n");

	/* 0x29030 or 0x29040 */
	reg = FUNC15(oct->pcie_port, oct->pf_num);
	len += FUNC17(s + len, "[%08x] (SLI_PKT_MAC%d_PF%d_RINFO): %016llx\n",
		       reg, oct->pcie_port, oct->pf_num,
		       FUNC0(FUNC16(oct, reg)));

	/* 0x27080 or 0x27090 */
	reg = FUNC6(oct->pcie_port, oct->pf_num);
	len += FUNC17(s + len, "[%08x] (SLI_MAC%d_PF%d_INT_ENB): %016llx\n",
		       reg, oct->pcie_port, oct->pf_num,
		       FUNC0(FUNC16(oct, reg)));

	/* 0x27000 or 0x27010 */
	reg = FUNC7(oct->pcie_port, oct->pf_num);
	len += FUNC17(s + len, "[%08x] (SLI_MAC%d_PF%d_INT_SUM): %016llx\n",
		       reg, oct->pcie_port, oct->pf_num,
		       FUNC0(FUNC16(oct, reg)));

	/* 0x29120 */
	reg = 0x29120;
	len += FUNC17(s + len, "[%08x] (SLI_PKT_MEM_CTL): %016llx\n", reg,
		       FUNC0(FUNC16(oct, reg)));

	/* 0x27300 */
	reg = 0x27300 + oct->pcie_port * LIO_CN23XX_MAC_INT_OFFSET +
	    (oct->pf_num) * LIO_CN23XX_PF_INT_OFFSET;
	len += FUNC17(s + len, "[%08x] (SLI_MAC%d_PF%d_PKT_VF_INT): %016llx\n",
		       reg, oct->pcie_port, oct->pf_num,
		       FUNC0(FUNC16(oct, reg)));

	/* 0x27200 */
	reg = 0x27200 + oct->pcie_port * LIO_CN23XX_MAC_INT_OFFSET +
	    (oct->pf_num) * LIO_CN23XX_PF_INT_OFFSET;
	len += FUNC17(s + len, "[%08x] (SLI_MAC%d_PF%d_PP_VF_INT): %016llx\n",
		       reg, oct->pcie_port, oct->pf_num,
		       FUNC0(FUNC16(oct, reg)));

	/* 29130 */
	reg = LIO_CN23XX_SLI_PKT_CNT_INT;
	len += FUNC17(s + len, "[%08x] (SLI_PKT_CNT_INT): %016llx\n", reg,
		       FUNC0(FUNC16(oct, reg)));

	/* 0x29140 */
	reg = LIO_CN23XX_SLI_PKT_TIME_INT;
	len += FUNC17(s + len, "[%08x] (SLI_PKT_TIME_INT): %016llx\n", reg,
		       FUNC0(FUNC16(oct, reg)));

	/* 0x29160 */
	reg = 0x29160;
	len += FUNC17(s + len, "[%08x] (SLI_PKT_INT): %016llx\n", reg,
		       FUNC0(FUNC16(oct, reg)));

	/* 0x29180 */
	reg = LIO_CN23XX_SLI_OQ_WMARK;
	len += FUNC17(s + len, "[%08x] (SLI_PKT_OUTPUT_WMARK): %016llx\n",
		       reg, FUNC0(FUNC16(oct, reg)));

	/* 0x291E0 */
	reg = LIO_CN23XX_SLI_PKT_IOQ_RING_RST;
	len += FUNC17(s + len, "[%08x] (SLI_PKT_RING_RST): %016llx\n", reg,
		       FUNC0(FUNC16(oct, reg)));

	/* 0x29210 */
	reg = LIO_CN23XX_SLI_GBL_CONTROL;
	len += FUNC17(s + len, "[%08x] (SLI_PKT_GBL_CONTROL): %016llx\n", reg,
		       FUNC0(FUNC16(oct, reg)));

	/* 0x29220 */
	reg = 0x29220;
	len += FUNC17(s + len, "[%08x] (SLI_PKT_BIST_STATUS): %016llx\n",
		       reg, FUNC0(FUNC16(oct, reg)));

	/* PF only */
	if (pf_num == 0) {
		/* 0x29260 */
		reg = LIO_CN23XX_SLI_OUT_BP_EN_W1S;
		len += FUNC17(s + len, "[%08x] (SLI_PKT_OUT_BP_EN_W1S):  %016llx\n",
			       reg, FUNC0(FUNC16(oct, reg)));
	} else if (pf_num == 1) {
		/* 0x29270 */
		reg = LIO_CN23XX_SLI_OUT_BP_EN2_W1S;
		len += FUNC17(s + len, "[%08x] (SLI_PKT_OUT_BP_EN2_W1S): %016llx\n",
			       reg, FUNC0(FUNC16(oct, reg)));
	}

	for (i = 0; i < LIO_CN23XX_PF_MAX_OUTPUT_QUEUES; i++) {
		reg = FUNC9(i);
		len += FUNC17(s + len, "[%08x] (SLI_PKT%d_OUT_SIZE): %016llx\n",
			       reg, i, FUNC0(FUNC16(oct, reg)));
	}

	/* 0x10040 */
	for (i = 0; i < LIO_CN23XX_PF_MAX_INPUT_QUEUES; i++) {
		reg = FUNC3(i);
		len += FUNC17(s + len, "[%08x] (SLI_PKT_IN_DONE%d_CNTS): %016llx\n",
			       reg, i, FUNC0(FUNC16(oct, reg)));
	}

	/* 0x10080 */
	for (i = 0; i < LIO_CN23XX_PF_MAX_OUTPUT_QUEUES; i++) {
		reg = FUNC10(i);
		len += FUNC17(s + len, "[%08x] (SLI_PKT%d_SLIST_BAOFF_DBELL): %016llx\n",
			       reg, i, FUNC0(FUNC16(oct, reg)));
	}

	/* 0x10090 */
	for (i = 0; i < LIO_CN23XX_PF_MAX_OUTPUT_QUEUES; i++) {
		reg = FUNC14(i);
		len += FUNC17(s + len, "[%08x] (SLI_PKT%d_SLIST_FIFO_RSIZE): %016llx\n",
			       reg, i, FUNC0(FUNC16(oct, reg)));
	}

	/* 0x10050 */
	for (i = 0; i < LIO_CN23XX_PF_MAX_OUTPUT_QUEUES; i++) {
		reg = FUNC12(i);
		len += FUNC17(s + len, "[%08x] (SLI_PKT%d__OUTPUT_CONTROL): %016llx\n",
			       reg, i, FUNC0(FUNC16(oct, reg)));
	}

	/* 0x10070 */
	for (i = 0; i < LIO_CN23XX_PF_MAX_OUTPUT_QUEUES; i++) {
		reg = FUNC8(i);
		len += FUNC17(s + len, "[%08x] (SLI_PKT%d_SLIST_BADDR): %016llx\n",
			       reg, i, FUNC0(FUNC16(oct, reg)));
	}

	/* 0x100a0 */
	for (i = 0; i < LIO_CN23XX_PF_MAX_OUTPUT_QUEUES; i++) {
		reg = FUNC13(i);
		len += FUNC17(s + len, "[%08x] (SLI_PKT%d_INT_LEVELS): %016llx\n",
			       reg, i, FUNC0(FUNC16(oct, reg)));
	}

	/* 0x100b0 */
	for (i = 0; i < LIO_CN23XX_PF_MAX_OUTPUT_QUEUES; i++) {
		reg = FUNC11(i);
		len += FUNC17(s + len, "[%08x] (SLI_PKT%d_CNTS): %016llx\n",
			       reg, i, FUNC0(FUNC16(oct, reg)));
	}

	/* 0x100c0 */
	for (i = 0; i < LIO_CN23XX_PF_MAX_OUTPUT_QUEUES; i++) {
		reg = 0x100c0 + i * LIO_CN23XX_OQ_OFFSET;
		len += FUNC17(s + len, "[%08x] (SLI_PKT%d_ERROR_INFO): %016llx\n",
			       reg, i, FUNC0(FUNC16(oct, reg)));
	}

	/* 0x10000 */
	for (i = 0; i < LIO_CN23XX_PF_MAX_INPUT_QUEUES; i++) {
		reg = FUNC4(i);
		len += FUNC17(s + len, "[%08x] (SLI_PKT%d_INPUT_CONTROL): %016llx\n",
			       reg, i, FUNC0(FUNC16(oct, reg)));
	}

	/* 0x10010 */
	for (i = 0; i < LIO_CN23XX_PF_MAX_INPUT_QUEUES; i++) {
		reg = FUNC1(i);
		len += FUNC17(s + len, "[%08x] (SLI_PKT%d_INSTR_BADDR): %016llx\n",
			       reg, i, FUNC0(FUNC16(oct, reg)));
	}

	/* 0x10020 */
	for (i = 0; i < LIO_CN23XX_PF_MAX_INPUT_QUEUES; i++) {
		reg = FUNC2(i);
		len += FUNC17(s + len, "[%08x] (SLI_PKT%d_INSTR_BAOFF_DBELL): %016llx\n",
			       reg, i, FUNC0(FUNC16(oct, reg)));
	}

	/* 0x10030 */
	for (i = 0; i < LIO_CN23XX_PF_MAX_INPUT_QUEUES; i++) {
		reg = FUNC5(i);
		len += FUNC17(s + len, "[%08x] (SLI_PKT%d_INSTR_FIFO_RSIZE): %016llx\n",
			       reg, i, FUNC0(FUNC16(oct, reg)));
	}

	/* 0x10040 */
	for (i = 0; i < LIO_CN23XX_PF_MAX_INPUT_QUEUES; i++)
		reg = FUNC3(i);
	len += FUNC17(s + len, "[%08x] (SLI_PKT_IN_DONE%d_CNTS): %016llx\n",
		       reg, i, FUNC0(FUNC16(oct, reg)));

	return (len);
}