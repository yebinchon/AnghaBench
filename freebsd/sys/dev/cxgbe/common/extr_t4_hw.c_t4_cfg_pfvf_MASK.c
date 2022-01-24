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
struct fw_pfvf_cmd {void* r_caps_to_nethctrl; void* tc_to_nexactf; void* type_to_neq; void* niqflint_niq; void* retval_len16; void* op_to_vfn; } ;
struct adapter {int dummy; } ;
typedef  int /*<<< orphan*/  c ;

/* Variables and functions */
 int FUNC0 (struct fw_pfvf_cmd) ; 
 int /*<<< orphan*/  FW_PFVF_CMD ; 
 int F_FW_CMD_REQUEST ; 
 int F_FW_CMD_WRITE ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (unsigned int) ; 
 int FUNC3 (unsigned int) ; 
 int FUNC4 (unsigned int) ; 
 int FUNC5 (unsigned int) ; 
 int FUNC6 (unsigned int) ; 
 int FUNC7 (unsigned int) ; 
 int FUNC8 (unsigned int) ; 
 int FUNC9 (unsigned int) ; 
 int FUNC10 (unsigned int) ; 
 int FUNC11 (unsigned int) ; 
 int FUNC12 (unsigned int) ; 
 int FUNC13 (unsigned int) ; 
 int FUNC14 (unsigned int) ; 
 void* FUNC15 (int) ; 
 int /*<<< orphan*/  FUNC16 (struct fw_pfvf_cmd*,int /*<<< orphan*/ ,int) ; 
 int FUNC17 (struct adapter*,unsigned int,struct fw_pfvf_cmd*,int,int /*<<< orphan*/ *) ; 

int FUNC18(struct adapter *adap, unsigned int mbox, unsigned int pf,
		unsigned int vf, unsigned int txq, unsigned int txq_eth_ctrl,
		unsigned int rxqi, unsigned int rxq, unsigned int tc,
		unsigned int vi, unsigned int cmask, unsigned int pmask,
		unsigned int nexact, unsigned int rcaps, unsigned int wxcaps)
{
	struct fw_pfvf_cmd c;

	FUNC16(&c, 0, sizeof(c));
	c.op_to_vfn = FUNC15(FUNC1(FW_PFVF_CMD) | F_FW_CMD_REQUEST |
				  F_FW_CMD_WRITE | FUNC9(pf) |
				  FUNC13(vf));
	c.retval_len16 = FUNC15(FUNC0(c));
	c.niqflint_niq = FUNC15(FUNC7(rxqi) |
				     FUNC6(rxq));
	c.type_to_neq = FUNC15(FUNC2(cmask) |
				    FUNC10(pmask) |
				    FUNC3(txq));
	c.tc_to_nexactf = FUNC15(FUNC12(tc) |
				      FUNC8(vi) |
				      FUNC5(nexact));
	c.r_caps_to_nethctrl = FUNC15(FUNC11(rcaps) |
				     FUNC14(wxcaps) |
				     FUNC4(txq_eth_ctrl));
	return FUNC17(adap, mbox, &c, sizeof(c), NULL);
}