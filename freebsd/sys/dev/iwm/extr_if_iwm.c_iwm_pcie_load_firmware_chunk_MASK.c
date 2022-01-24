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
struct iwm_softc {int /*<<< orphan*/  sc_dev; scalar_t__ sc_fw_chunk_done; int /*<<< orphan*/  sc_mtx; int /*<<< orphan*/  sc_fw; } ;
typedef  int bus_addr_t ;

/* Variables and functions */
 int EBUSY ; 
 int ETIMEDOUT ; 
 int IWM_FH_MEM_TFDIB_DRAM_ADDR_LSB_MSK ; 
 int IWM_FH_MEM_TFDIB_REG1_ADDR_BITSHIFT ; 
 int /*<<< orphan*/  IWM_FH_SRVC_CHNL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int IWM_FH_TCSR_CHNL_TX_BUF_STS_REG_POS_TB_IDX ; 
 int IWM_FH_TCSR_CHNL_TX_BUF_STS_REG_POS_TB_NUM ; 
 int IWM_FH_TCSR_CHNL_TX_BUF_STS_REG_VAL_TFDB_VALID ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int IWM_FH_TCSR_TX_CONFIG_REG_VAL_CIRQ_HOST_ENDTFD ; 
 int IWM_FH_TCSR_TX_CONFIG_REG_VAL_DMA_CHNL_ENABLE ; 
 int IWM_FH_TCSR_TX_CONFIG_REG_VAL_DMA_CHNL_PAUSE ; 
 int IWM_FH_TCSR_TX_CONFIG_REG_VAL_DMA_CREDIT_DISABLE ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct iwm_softc*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,int,int) ; 
 int hz ; 
 int FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (struct iwm_softc*) ; 
 int /*<<< orphan*/  FUNC9 (struct iwm_softc*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,int) ; 

__attribute__((used)) static int
FUNC11(struct iwm_softc *sc, uint32_t dst_addr,
			     bus_addr_t phy_addr, uint32_t byte_cnt)
{
	sc->sc_fw_chunk_done = 0;

	if (!FUNC8(sc))
		return EBUSY;

	FUNC5(sc, FUNC2(IWM_FH_SRVC_CHNL),
	    IWM_FH_TCSR_TX_CONFIG_REG_VAL_DMA_CHNL_PAUSE);

	FUNC5(sc, FUNC0(IWM_FH_SRVC_CHNL),
	    dst_addr);

	FUNC5(sc, FUNC3(IWM_FH_SRVC_CHNL),
	    phy_addr & IWM_FH_MEM_TFDIB_DRAM_ADDR_LSB_MSK);

	FUNC5(sc, FUNC4(IWM_FH_SRVC_CHNL),
	    (FUNC7(phy_addr)
	     << IWM_FH_MEM_TFDIB_REG1_ADDR_BITSHIFT) | byte_cnt);

	FUNC5(sc, FUNC1(IWM_FH_SRVC_CHNL),
	    1 << IWM_FH_TCSR_CHNL_TX_BUF_STS_REG_POS_TB_NUM |
	    1 << IWM_FH_TCSR_CHNL_TX_BUF_STS_REG_POS_TB_IDX |
	    IWM_FH_TCSR_CHNL_TX_BUF_STS_REG_VAL_TFDB_VALID);

	FUNC5(sc, FUNC2(IWM_FH_SRVC_CHNL),
	    IWM_FH_TCSR_TX_CONFIG_REG_VAL_DMA_CHNL_ENABLE    |
	    IWM_FH_TCSR_TX_CONFIG_REG_VAL_DMA_CREDIT_DISABLE |
	    IWM_FH_TCSR_TX_CONFIG_REG_VAL_CIRQ_HOST_ENDTFD);

	FUNC9(sc);

	/* wait up to 5s for this segment to load */
	FUNC10(&sc->sc_fw, &sc->sc_mtx, 0, "iwmfw", hz * 5);

	if (!sc->sc_fw_chunk_done) {
		FUNC6(sc->sc_dev,
		    "fw chunk addr 0x%x len %d failed to load\n",
		    dst_addr, byte_cnt);
		return ETIMEDOUT;
	}

	return 0;
}