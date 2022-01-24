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
struct iwm_softc {TYPE_1__* cfg; } ;
struct TYPE_2__ {scalar_t__ mqrx_supported; } ;

/* Variables and functions */
 int /*<<< orphan*/  IWM_FH_MEM_RCSR_CHNL0_CONFIG_REG ; 
 int /*<<< orphan*/  IWM_FH_MEM_RSSR_RX_STATUS_REG ; 
 int /*<<< orphan*/  IWM_FH_RSSR_CHNL0_RX_STATUS_CHNL_IDLE ; 
 int /*<<< orphan*/  IWM_RFH_GEN_STATUS ; 
 int /*<<< orphan*/  IWM_RFH_RXF_DMA_CFG ; 
 int /*<<< orphan*/  IWM_RXF_DMA_IDLE ; 
 int /*<<< orphan*/  FUNC0 (struct iwm_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (struct iwm_softc*) ; 
 int /*<<< orphan*/  FUNC2 (struct iwm_softc*) ; 
 int FUNC3 (struct iwm_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int FUNC4 (struct iwm_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (struct iwm_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int
FUNC6(struct iwm_softc *sc)
{
	int ret;

	ret = 0;
	if (FUNC1(sc)) {
		if (sc->cfg->mqrx_supported) {
			FUNC5(sc, IWM_RFH_RXF_DMA_CFG, 0);
			ret = FUNC4(sc, IWM_RFH_GEN_STATUS,
			    IWM_RXF_DMA_IDLE, IWM_RXF_DMA_IDLE, 1000);
		} else {
			FUNC0(sc, IWM_FH_MEM_RCSR_CHNL0_CONFIG_REG, 0);
			ret = FUNC3(sc, IWM_FH_MEM_RSSR_RX_STATUS_REG,
			    IWM_FH_RSSR_CHNL0_RX_STATUS_CHNL_IDLE,
			    IWM_FH_RSSR_CHNL0_RX_STATUS_CHNL_IDLE,
			    1000);
		}
		FUNC2(sc);
	}
	return ret;
}