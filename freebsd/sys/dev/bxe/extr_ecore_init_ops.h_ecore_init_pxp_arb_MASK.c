#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int uint32_t ;
struct bxe_softc {int dummy; } ;
struct TYPE_8__ {scalar_t__ l; scalar_t__ add; scalar_t__ ubound; } ;
struct TYPE_7__ {int l; int add; int ubound; } ;
struct TYPE_6__ {scalar_t__ l; scalar_t__ add; scalar_t__ ubound; } ;
struct TYPE_5__ {int l; int add; int ubound; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct bxe_softc*) ; 
 scalar_t__ FUNC1 (struct bxe_softc*) ; 
 scalar_t__ FUNC2 (struct bxe_softc*) ; 
 scalar_t__ FUNC3 (struct bxe_softc*) ; 
 scalar_t__ FUNC4 (struct bxe_softc*) ; 
 int /*<<< orphan*/  FUNC5 (struct bxe_softc*,char*,...) ; 
 int MAX_RD_ORD ; 
 int MAX_WR_ORD ; 
 int NUM_RD_Q ; 
 int NUM_WR_Q ; 
 scalar_t__ PCIE_REG_PCIER_TL_HDR_FC_ST ; 
 scalar_t__ PXP2_REG_PGL_TAGS_LIMIT ; 
 scalar_t__ PXP2_REG_PSWRQ_BW_RD ; 
 scalar_t__ PXP2_REG_PSWRQ_BW_WR ; 
 scalar_t__ PXP2_REG_RQ_BW_WR_L29 ; 
 scalar_t__ PXP2_REG_RQ_BW_WR_L30 ; 
 scalar_t__ PXP2_REG_RQ_PDR_LIMIT ; 
 scalar_t__ PXP2_REG_RQ_RD_MBS0 ; 
 scalar_t__ PXP2_REG_RQ_RD_MBS1 ; 
 scalar_t__ PXP2_REG_RQ_WR_MBS0 ; 
 scalar_t__ PXP2_REG_RQ_WR_MBS1 ; 
 scalar_t__ PXP2_REG_WR_CDU_MPS ; 
 scalar_t__ PXP2_REG_WR_CSDM_MPS ; 
 scalar_t__ PXP2_REG_WR_DBG_MPS ; 
 scalar_t__ PXP2_REG_WR_DMAE_MPS ; 
 scalar_t__ PXP2_REG_WR_HC_MPS ; 
 scalar_t__ PXP2_REG_WR_QM_MPS ; 
 scalar_t__ PXP2_REG_WR_SRC_MPS ; 
 scalar_t__ PXP2_REG_WR_TM_MPS ; 
 scalar_t__ PXP2_REG_WR_TSDM_MPS ; 
 scalar_t__ PXP2_REG_WR_USDMDP_TH ; 
 scalar_t__ PXP2_REG_WR_USDM_MPS ; 
 scalar_t__ PXP2_REG_WR_XSDM_MPS ; 
 int FUNC6 (struct bxe_softc*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (struct bxe_softc*,scalar_t__,int) ; 
 TYPE_4__* read_arb_addr ; 
 TYPE_3__** read_arb_data ; 
 TYPE_2__* write_arb_addr ; 
 TYPE_1__** write_arb_data ; 

__attribute__((used)) static void FUNC8(struct bxe_softc *sc, int r_order,
			       int w_order)
{
	uint32_t val, i;

	if (r_order > MAX_RD_ORD) {
		FUNC5(sc, "read order of %d  order adjusted to %d\n",
			   r_order, MAX_RD_ORD);
		r_order = MAX_RD_ORD;
	}
	if (w_order > MAX_WR_ORD) {
		FUNC5(sc, "write order of %d  order adjusted to %d\n",
			   w_order, MAX_WR_ORD);
		w_order = MAX_WR_ORD;
	}
	if (FUNC4(sc)) {
		FUNC5(sc, "write order adjusted to 1 for FPGA\n");
		w_order = 0;
	}
	FUNC5(sc, "read order %d  write order %d\n", r_order, w_order);

	for (i = 0; i < NUM_RD_Q-1; i++) {
		FUNC7(sc, read_arb_addr[i].l, read_arb_data[i][r_order].l);
		FUNC7(sc, read_arb_addr[i].add,
		       read_arb_data[i][r_order].add);
		FUNC7(sc, read_arb_addr[i].ubound,
		       read_arb_data[i][r_order].ubound);
	}

	for (i = 0; i < NUM_WR_Q-1; i++) {
		if ((write_arb_addr[i].l == PXP2_REG_RQ_BW_WR_L29) ||
		    (write_arb_addr[i].l == PXP2_REG_RQ_BW_WR_L30)) {

			FUNC7(sc, write_arb_addr[i].l,
			       write_arb_data[i][w_order].l);

			FUNC7(sc, write_arb_addr[i].add,
			       write_arb_data[i][w_order].add);

			FUNC7(sc, write_arb_addr[i].ubound,
			       write_arb_data[i][w_order].ubound);
		} else {

			val = FUNC6(sc, write_arb_addr[i].l);
			FUNC7(sc, write_arb_addr[i].l,
			       val | (write_arb_data[i][w_order].l << 10));

			val = FUNC6(sc, write_arb_addr[i].add);
			FUNC7(sc, write_arb_addr[i].add,
			       val | (write_arb_data[i][w_order].add << 10));

			val = FUNC6(sc, write_arb_addr[i].ubound);
			FUNC7(sc, write_arb_addr[i].ubound,
			       val | (write_arb_data[i][w_order].ubound << 7));
		}
	}

	val =  write_arb_data[NUM_WR_Q-1][w_order].add;
	val += write_arb_data[NUM_WR_Q-1][w_order].ubound << 10;
	val += write_arb_data[NUM_WR_Q-1][w_order].l << 17;
	FUNC7(sc, PXP2_REG_PSWRQ_BW_RD, val);

	val =  read_arb_data[NUM_RD_Q-1][r_order].add;
	val += read_arb_data[NUM_RD_Q-1][r_order].ubound << 10;
	val += read_arb_data[NUM_RD_Q-1][r_order].l << 17;
	FUNC7(sc, PXP2_REG_PSWRQ_BW_WR, val);

	FUNC7(sc, PXP2_REG_RQ_WR_MBS0, w_order);
	FUNC7(sc, PXP2_REG_RQ_WR_MBS1, w_order);
	FUNC7(sc, PXP2_REG_RQ_RD_MBS0, r_order);
	FUNC7(sc, PXP2_REG_RQ_RD_MBS1, r_order);

	if ((FUNC0(sc) || FUNC1(sc)) && (r_order == MAX_RD_ORD))
		FUNC7(sc, PXP2_REG_RQ_PDR_LIMIT, 0xe00);

	if (FUNC3(sc))
		FUNC7(sc, PXP2_REG_WR_USDMDP_TH, (0x4 << w_order));
	else if (FUNC2(sc))
		FUNC7(sc, PXP2_REG_WR_USDMDP_TH, (0x8 << w_order));
	else
		FUNC7(sc, PXP2_REG_WR_USDMDP_TH, (0x18 << w_order));

	if (!FUNC0(sc)) {
		/*    MPS      w_order     optimal TH      presently TH
		 *    128         0             0               2
		 *    256         1             1               3
		 *    >=512       2             2               3
		 */
		/* DMAE is special */
		if (!FUNC1(sc)) {
			/* E2 can use optimal TH */
			val = w_order;
			FUNC7(sc, PXP2_REG_WR_DMAE_MPS, val);
		} else {
			val = ((w_order == 0) ? 2 : 3);
			FUNC7(sc, PXP2_REG_WR_DMAE_MPS, 2);
		}

		FUNC7(sc, PXP2_REG_WR_HC_MPS, val);
		FUNC7(sc, PXP2_REG_WR_USDM_MPS, val);
		FUNC7(sc, PXP2_REG_WR_CSDM_MPS, val);
		FUNC7(sc, PXP2_REG_WR_TSDM_MPS, val);
		FUNC7(sc, PXP2_REG_WR_XSDM_MPS, val);
		FUNC7(sc, PXP2_REG_WR_QM_MPS, val);
		FUNC7(sc, PXP2_REG_WR_TM_MPS, val);
		FUNC7(sc, PXP2_REG_WR_SRC_MPS, val);
		FUNC7(sc, PXP2_REG_WR_DBG_MPS, val);
		FUNC7(sc, PXP2_REG_WR_CDU_MPS, val);
	}

	/* Validate number of tags suppoted by device */
#define PCIE_REG_PCIER_TL_HDR_FC_ST		0x2980
	val = FUNC6(sc, PCIE_REG_PCIER_TL_HDR_FC_ST);
	val &= 0xFF;
	if (val <= 0x20)
		FUNC7(sc, PXP2_REG_PGL_TAGS_LIMIT, 0x20);
}