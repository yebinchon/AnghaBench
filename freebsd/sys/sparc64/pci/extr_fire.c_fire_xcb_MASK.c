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
typedef  int u_int ;
struct fire_softc {scalar_t__ sc_mode; int /*<<< orphan*/  sc_dev; int /*<<< orphan*/  sc_pcib_mtx; int /*<<< orphan*/  sc_stats_jbc_ce_async; int /*<<< orphan*/  sc_stats_jbc_unsol_int; int /*<<< orphan*/  sc_stats_jbc_unsol_rd; int /*<<< orphan*/  sc_stats_ubc_dmardue; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int FILTER_HANDLED ; 
 int FUNC0 (struct fire_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct fire_softc*,int /*<<< orphan*/ ,unsigned long long) ; 
 int /*<<< orphan*/  FIRE_DMCINT_IDC_ERR_LOG ; 
 int /*<<< orphan*/  FIRE_FATAL_ERR_LOG ; 
 int /*<<< orphan*/  FIRE_FATAL_ERR_LOG2 ; 
 int /*<<< orphan*/  FIRE_JBCINT_ITRANS_ERR_LOG ; 
 int /*<<< orphan*/  FIRE_JBCINT_ITRANS_ERR_LOG2 ; 
 int /*<<< orphan*/  FIRE_JBCINT_OTRANS_ERR_LOG ; 
 int /*<<< orphan*/  FIRE_JBCINT_OTRANS_ERR_LOG2 ; 
 int /*<<< orphan*/  FIRE_JBC_CORE_BLOCK_ERR_STAT ; 
 int FIRE_JBC_CORE_BLOCK_ERR_STAT_DMCINT ; 
 int FIRE_JBC_CORE_BLOCK_ERR_STAT_JBCINT ; 
 int FIRE_JBC_CORE_BLOCK_ERR_STAT_MERGE ; 
 int /*<<< orphan*/  FIRE_JBC_CSR_ERR_LOG ; 
 int FIRE_JBC_ERR_INT_APE_P ; 
 int FIRE_JBC_ERR_INT_BJC_P ; 
 int FIRE_JBC_ERR_INT_CE_ASYN_P ; 
 int FIRE_JBC_ERR_INT_CPE_P ; 
 int FIRE_JBC_ERR_INT_EBUS_TO_P ; 
 int FIRE_JBC_ERR_INT_ICISE_P ; 
 int FIRE_JBC_ERR_INT_IJP_P ; 
 int FIRE_JBC_ERR_INT_ILL_ACC_P ; 
 int FIRE_JBC_ERR_INT_ILL_ACC_RD_P ; 
 int FIRE_JBC_ERR_INT_ILL_BMR_P ; 
 int FIRE_JBC_ERR_INT_ILL_BMW_P ; 
 int FIRE_JBC_ERR_INT_JBE_P ; 
 int FIRE_JBC_ERR_INT_JTCEEI_P ; 
 int FIRE_JBC_ERR_INT_JTCEER_P ; 
 int FIRE_JBC_ERR_INT_JTCEEW_P ; 
 int FIRE_JBC_ERR_INT_JTE_P ; 
 int FIRE_JBC_ERR_INT_JUE_P ; 
 int FIRE_JBC_ERR_INT_MB_PEA_P ; 
 int FIRE_JBC_ERR_INT_MB_PER_P ; 
 int FIRE_JBC_ERR_INT_MB_PEW_P ; 
 int FIRE_JBC_ERR_INT_PIO_CPE_P ; 
 int FIRE_JBC_ERR_INT_PIO_DPE_P ; 
 int FIRE_JBC_ERR_INT_PIO_UNMAP_P ; 
 int FIRE_JBC_ERR_INT_PIO_UNMAP_RD_P ; 
 int FIRE_JBC_ERR_INT_RD_DPE_P ; 
 int FIRE_JBC_ERR_INT_UE_ASYN_P ; 
 int FIRE_JBC_ERR_INT_UNSOL_INT_P ; 
 int FIRE_JBC_ERR_INT_UNSOL_RD_P ; 
 int FIRE_JBC_ERR_INT_WR_DPE_P ; 
 int /*<<< orphan*/  FIRE_MERGE_TRANS_ERR_LOG ; 
 scalar_t__ FIRE_MODE_OBERON ; 
 int /*<<< orphan*/  FO_XBC_ERR_STAT_CLR ; 
 int /*<<< orphan*/  FO_XBC_INT_STAT ; 
 int OBERON_UBC_ERR_INT_DMARDUEA_P ; 
 int OBERON_UBC_ERR_INT_DMARDUEB_P ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,unsigned long long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (char*,int /*<<< orphan*/ ,...) ; 

__attribute__((used)) static int
FUNC7(void *arg)
{
	struct fire_softc *sc;
	device_t dev;
	uint64_t errstat, intstat, val;
	u_int fatal;

	fatal = 0;
	sc = arg;
	dev = sc->sc_dev;
	FUNC4(&sc->sc_pcib_mtx);
	if (sc->sc_mode == FIRE_MODE_OBERON) {
		intstat = FUNC0(sc, FO_XBC_INT_STAT);
		FUNC3(dev, "UBC error: interrupt status %#llx\n",
		    (unsigned long long)intstat);
		if ((intstat & ~(OBERON_UBC_ERR_INT_DMARDUEB_P |
		    OBERON_UBC_ERR_INT_DMARDUEA_P)) != 0)
			fatal = 1;
		else
			sc->sc_stats_ubc_dmardue++;
		if (fatal != 0) {
			FUNC5(&sc->sc_pcib_mtx);
			FUNC6("%s: fatal UBC core block error",
			    FUNC2(sc->sc_dev));
		} else {
			FUNC1(sc, FO_XBC_ERR_STAT_CLR, ~0ULL);
			FUNC5(&sc->sc_pcib_mtx);
		}
	} else {
		errstat = FUNC0(sc, FIRE_JBC_CORE_BLOCK_ERR_STAT);
		if ((errstat & (FIRE_JBC_CORE_BLOCK_ERR_STAT_MERGE |
		    FIRE_JBC_CORE_BLOCK_ERR_STAT_JBCINT |
		    FIRE_JBC_CORE_BLOCK_ERR_STAT_DMCINT)) != 0) {
			intstat = FUNC0(sc, FO_XBC_INT_STAT);
			FUNC3(dev, "JBC interrupt status %#llx\n",
			    (unsigned long long)intstat);
			if ((intstat & FIRE_JBC_ERR_INT_EBUS_TO_P) != 0) {
				val = FUNC0(sc,
				    FIRE_JBC_CSR_ERR_LOG);
				FUNC3(dev, "CSR error log %#llx\n",
				    (unsigned long long)val);
			}
			if ((intstat & (FIRE_JBC_ERR_INT_UNSOL_RD_P |
			    FIRE_JBC_ERR_INT_UNSOL_INT_P)) != 0) {
				if ((intstat &
				    FIRE_JBC_ERR_INT_UNSOL_RD_P) != 0)
					sc->sc_stats_jbc_unsol_rd++;
				if ((intstat &
				    FIRE_JBC_ERR_INT_UNSOL_INT_P) != 0)
					sc->sc_stats_jbc_unsol_int++;
				val = FUNC0(sc,
				    FIRE_DMCINT_IDC_ERR_LOG);
				FUNC3(dev,
				    "DMCINT IDC error log %#llx\n",
				    (unsigned long long)val);
			}
			if ((intstat & (FIRE_JBC_ERR_INT_MB_PER_P |
			    FIRE_JBC_ERR_INT_MB_PEW_P)) != 0) {
				fatal = 1;
				val = FUNC0(sc,
				    FIRE_MERGE_TRANS_ERR_LOG);
				FUNC3(dev,
				    "merge transaction error log %#llx\n",
				    (unsigned long long)val);
			}
			if ((intstat & FIRE_JBC_ERR_INT_IJP_P) != 0) {
				fatal = 1;
				val = FUNC0(sc,
				    FIRE_JBCINT_OTRANS_ERR_LOG);
				FUNC3(dev,
				    "JBCINT out transaction error log "
				    "%#llx\n", (unsigned long long)val);
				val = FUNC0(sc,
				    FIRE_JBCINT_OTRANS_ERR_LOG2);
				FUNC3(dev,
				    "JBCINT out transaction error log 2 "
				    "%#llx\n", (unsigned long long)val);
			}
			if ((intstat & (FIRE_JBC_ERR_INT_UE_ASYN_P |
			    FIRE_JBC_ERR_INT_CE_ASYN_P |
			    FIRE_JBC_ERR_INT_JTE_P | FIRE_JBC_ERR_INT_JBE_P |
			    FIRE_JBC_ERR_INT_JUE_P |
			    FIRE_JBC_ERR_INT_ICISE_P |
			    FIRE_JBC_ERR_INT_WR_DPE_P |
			    FIRE_JBC_ERR_INT_RD_DPE_P |
			    FIRE_JBC_ERR_INT_ILL_BMW_P |
			    FIRE_JBC_ERR_INT_ILL_BMR_P |
			    FIRE_JBC_ERR_INT_BJC_P)) != 0) {
				if ((intstat & (FIRE_JBC_ERR_INT_UE_ASYN_P |
				    FIRE_JBC_ERR_INT_JTE_P |
				    FIRE_JBC_ERR_INT_JBE_P |
				    FIRE_JBC_ERR_INT_JUE_P |
				    FIRE_JBC_ERR_INT_ICISE_P |
				    FIRE_JBC_ERR_INT_WR_DPE_P |
				    FIRE_JBC_ERR_INT_RD_DPE_P |
				    FIRE_JBC_ERR_INT_ILL_BMW_P |
				    FIRE_JBC_ERR_INT_ILL_BMR_P |
				    FIRE_JBC_ERR_INT_BJC_P)) != 0)
					fatal = 1;
				else
					sc->sc_stats_jbc_ce_async++;
				val = FUNC0(sc,
				    FIRE_JBCINT_ITRANS_ERR_LOG);
				FUNC3(dev,
				    "JBCINT in transaction error log %#llx\n",
				    (unsigned long long)val);
				val = FUNC0(sc,
				    FIRE_JBCINT_ITRANS_ERR_LOG2);
				FUNC3(dev,
				    "JBCINT in transaction error log 2 "
				    "%#llx\n", (unsigned long long)val);
			}
			if ((intstat & (FIRE_JBC_ERR_INT_PIO_UNMAP_RD_P |
			    FIRE_JBC_ERR_INT_ILL_ACC_RD_P |
			    FIRE_JBC_ERR_INT_PIO_UNMAP_P |
			    FIRE_JBC_ERR_INT_PIO_DPE_P |
			    FIRE_JBC_ERR_INT_PIO_CPE_P |
			    FIRE_JBC_ERR_INT_ILL_ACC_P)) != 0) {
				fatal = 1;
				val = FUNC0(sc,
				    FIRE_JBC_CSR_ERR_LOG);
				FUNC3(dev,
				    "DMCINT ODCD error log %#llx\n",
				    (unsigned long long)val);
			}
			if ((intstat & (FIRE_JBC_ERR_INT_MB_PEA_P |
			    FIRE_JBC_ERR_INT_CPE_P | FIRE_JBC_ERR_INT_APE_P |
			    FIRE_JBC_ERR_INT_PIO_CPE_P |
			    FIRE_JBC_ERR_INT_JTCEEW_P |
			    FIRE_JBC_ERR_INT_JTCEEI_P |
			    FIRE_JBC_ERR_INT_JTCEER_P)) != 0) {
				fatal = 1;
				val = FUNC0(sc,
				    FIRE_FATAL_ERR_LOG);
				FUNC3(dev, "fatal error log %#llx\n",
				    (unsigned long long)val);
				val = FUNC0(sc,
				    FIRE_FATAL_ERR_LOG2);
				FUNC3(dev, "fatal error log 2 "
				    "%#llx\n", (unsigned long long)val);
			}
			if (fatal != 0) {
				FUNC5(&sc->sc_pcib_mtx);
				FUNC6("%s: fatal JBC core block error",
				    FUNC2(sc->sc_dev));
			} else {
				FUNC1(sc, FO_XBC_ERR_STAT_CLR, ~0ULL);
				FUNC5(&sc->sc_pcib_mtx);
			}
		} else {
			FUNC5(&sc->sc_pcib_mtx);
			FUNC6("%s: unknown JCB core block error status %#llx",
			    FUNC2(sc->sc_dev),
			    (unsigned long long)errstat);
		}
	}
	return (FILTER_HANDLED);
}