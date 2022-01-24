#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_29__   TYPE_3__ ;
typedef  struct TYPE_28__   TYPE_2__ ;
typedef  struct TYPE_27__   TYPE_22__ ;
typedef  struct TYPE_26__   TYPE_1__ ;
typedef  struct TYPE_25__   TYPE_10__ ;

/* Type definitions */
typedef  int u32 ;
struct vpd_params {int uclk; int /*<<< orphan*/  mem_timing; scalar_t__ mclk; } ;
struct TYPE_25__ {int /*<<< orphan*/  max_pkt_size; } ;
struct TYPE_26__ {int /*<<< orphan*/  nroutes; int /*<<< orphan*/  nfilters; int /*<<< orphan*/  nservers; } ;
struct TYPE_28__ {scalar_t__ rev; int nports; TYPE_10__ sge; int /*<<< orphan*/  chan_map; int /*<<< orphan*/  tp; TYPE_1__ mc5; struct vpd_params vpd; } ;
struct TYPE_29__ {TYPE_2__ params; int /*<<< orphan*/  mc5; int /*<<< orphan*/  cm; int /*<<< orphan*/  pmtx; int /*<<< orphan*/  pmrx; } ;
typedef  TYPE_3__ adapter_t ;
struct TYPE_27__ {int /*<<< orphan*/  mac; } ;

/* Variables and functions */
 int /*<<< orphan*/  A_CIM_BOOT_CFG ; 
 int /*<<< orphan*/  A_CIM_HOST_ACC_DATA ; 
 int /*<<< orphan*/  A_PCIX_CFG ; 
 int /*<<< orphan*/  A_PL_RST ; 
 int /*<<< orphan*/  A_PM1_RX_CFG ; 
 int /*<<< orphan*/  A_PM1_RX_MODE ; 
 int /*<<< orphan*/  A_PM1_TX_MODE ; 
 int /*<<< orphan*/  A_T3DBG_GPIO_ACT_LOW ; 
 int /*<<< orphan*/  A_ULPTX_CONFIG ; 
 int /*<<< orphan*/  FUNC0 (TYPE_3__*,char*) ; 
 int EIO ; 
 int FW_FLASH_BOOT_ADDR ; 
 int F_CFG_CQE_SOP_MASK ; 
 int F_CLIDECEN ; 
 int /*<<< orphan*/  F_CQ ; 
 int F_DMASTOPEN ; 
 int F_FATALPERREN ; 
 unsigned int MAX_RX_COALESCING_LEN ; 
 scalar_t__ T3_REV_C ; 
 int FUNC1 (int) ; 
 TYPE_22__* FUNC2 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 int FUNC3 (TYPE_3__*) ; 
 scalar_t__ FUNC4 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (TYPE_3__*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_3__*) ; 
 scalar_t__ FUNC9 (TYPE_3__*) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ *,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC12 (int) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_3__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC15 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC16 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (TYPE_3__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC18 (TYPE_3__*,TYPE_10__*) ; 
 int /*<<< orphan*/  FUNC19 (TYPE_3__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC20 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC21 (TYPE_3__*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC22 (TYPE_3__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC23 (TYPE_3__*,int /*<<< orphan*/ *) ; 

int FUNC24(adapter_t *adapter, u32 fw_params)
{
	int err = -EIO, attempts, i;
	const struct vpd_params *vpd = &adapter->params.vpd;

	if (adapter->params.rev > 0)
		FUNC5(adapter);
	else if (FUNC4(adapter))
		goto out_err;

	if (adapter->params.nports > 2)
		FUNC14(&FUNC2(adapter, 0)->mac);

	if (vpd->mclk) {
		FUNC13(adapter, &adapter->params.tp);

		if (FUNC10(&adapter->pmrx, vpd->mclk, vpd->mem_timing) ||
		    FUNC10(&adapter->pmtx, vpd->mclk, vpd->mem_timing) ||
		    FUNC10(&adapter->cm, vpd->mclk, vpd->mem_timing) ||
		    FUNC15(&adapter->mc5, adapter->params.mc5.nservers,
			        adapter->params.mc5.nfilters,
			       	adapter->params.mc5.nroutes))
			goto out_err;

		for (i = 0; i < 32; i++)
			if (FUNC7(adapter, i, F_CQ))
				goto out_err;
	}

	if (FUNC22(adapter, &adapter->params.tp))
		goto out_err;

	FUNC19(adapter,
				  FUNC11(adapter->params.sge.max_pkt_size,
				      MAX_RX_COALESCING_LEN), 1);
	FUNC20(adapter,
			     FUNC11(adapter->params.sge.max_pkt_size, 16384U));
	FUNC23(adapter, &adapter->params.tp);
	if (FUNC9(adapter))
		FUNC8(adapter);
	else
		FUNC17(adapter, A_PCIX_CFG, 0,
				 F_DMASTOPEN | F_CLIDECEN);

	if (adapter->params.rev == T3_REV_C)
		FUNC17(adapter, A_ULPTX_CONFIG, 0,
				 F_CFG_CQE_SOP_MASK);

	FUNC21(adapter, A_PM1_RX_CFG, 0xffffffff);
	FUNC21(adapter, A_PM1_RX_MODE, 0);
	FUNC21(adapter, A_PM1_TX_MODE, 0);
	FUNC6(adapter, adapter->params.chan_map);
	FUNC18(adapter, &adapter->params.sge);
	FUNC17(adapter, A_PL_RST, 0, F_FATALPERREN);

	FUNC21(adapter, A_T3DBG_GPIO_ACT_LOW, FUNC3(adapter));

	FUNC21(adapter, A_CIM_HOST_ACC_DATA, vpd->uclk | fw_params);
	FUNC21(adapter, A_CIM_BOOT_CFG,
		     FUNC1(FW_FLASH_BOOT_ADDR >> 2));
	(void) FUNC16(adapter, A_CIM_BOOT_CFG);    /* flush */

	attempts = 100;
	do {                          /* wait for uP to initialize */
		FUNC12(20);
	} while (FUNC16(adapter, A_CIM_HOST_ACC_DATA) && --attempts);
	if (!attempts) {
		FUNC0(adapter, "uP initialization timed out\n");
		goto out_err;
	}

	err = 0;
 out_err:
	return err;
}