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
struct ffec_softc {scalar_t__ fectype; } ;

/* Variables and functions */
 scalar_t__ FECTYPE_IMX6 ; 
 scalar_t__ FECTYPE_MVF ; 
 int /*<<< orphan*/  FEC_IEEE_R_DROP ; 
 int /*<<< orphan*/  FEC_IEEE_R_MACERR ; 
 int FEC_MIBC_CLEAR ; 
 int FEC_MIBC_DIS ; 
 int /*<<< orphan*/  FEC_MIBC_REG ; 
 int /*<<< orphan*/  FEC_RMON_R_CRC_ALIGN ; 
 int /*<<< orphan*/  FEC_RMON_R_FRAG ; 
 int /*<<< orphan*/  FEC_RMON_R_JAB ; 
 int /*<<< orphan*/  FEC_RMON_R_MC_PKT ; 
 int /*<<< orphan*/  FEC_RMON_R_OVERSIZE ; 
 int /*<<< orphan*/  FEC_RMON_R_PACKETS ; 
 int /*<<< orphan*/  FEC_RMON_R_UNDERSIZE ; 
 int /*<<< orphan*/  FEC_RMON_T_COL ; 
 int /*<<< orphan*/  FEC_RMON_T_CRC_ALIGN ; 
 int /*<<< orphan*/  FEC_RMON_T_FRAG ; 
 int /*<<< orphan*/  FEC_RMON_T_JAB ; 
 int /*<<< orphan*/  FEC_RMON_T_MC_PKT ; 
 int /*<<< orphan*/  FEC_RMON_T_OVERSIZE ; 
 int /*<<< orphan*/  FEC_RMON_T_PACKETS ; 
 int /*<<< orphan*/  FEC_RMON_T_UNDERSIZE ; 
 int FUNC0 (struct ffec_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct ffec_softc*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC2(struct ffec_softc *sc)
{
	uint32_t mibc;

	mibc = FUNC0(sc, FEC_MIBC_REG);

	/*
	 * On newer hardware the statistic regs are cleared by toggling a bit in
	 * the mib control register.  On older hardware the clear procedure is
	 * to disable statistics collection, zero the regs, then re-enable.
	 */
	if (sc->fectype == FECTYPE_IMX6 || sc->fectype == FECTYPE_MVF) {
		FUNC1(sc, FEC_MIBC_REG, mibc | FEC_MIBC_CLEAR);
		FUNC1(sc, FEC_MIBC_REG, mibc & ~FEC_MIBC_CLEAR);
	} else {
		FUNC1(sc, FEC_MIBC_REG, mibc | FEC_MIBC_DIS);
	
		FUNC1(sc, FEC_IEEE_R_DROP, 0);
		FUNC1(sc, FEC_IEEE_R_MACERR, 0);
		FUNC1(sc, FEC_RMON_R_CRC_ALIGN, 0);
		FUNC1(sc, FEC_RMON_R_FRAG, 0);
		FUNC1(sc, FEC_RMON_R_JAB, 0);
		FUNC1(sc, FEC_RMON_R_MC_PKT, 0);
		FUNC1(sc, FEC_RMON_R_OVERSIZE, 0);
		FUNC1(sc, FEC_RMON_R_PACKETS, 0);
		FUNC1(sc, FEC_RMON_R_UNDERSIZE, 0);
		FUNC1(sc, FEC_RMON_T_COL, 0);
		FUNC1(sc, FEC_RMON_T_CRC_ALIGN, 0);
		FUNC1(sc, FEC_RMON_T_FRAG, 0);
		FUNC1(sc, FEC_RMON_T_JAB, 0);
		FUNC1(sc, FEC_RMON_T_MC_PKT, 0);
		FUNC1(sc, FEC_RMON_T_OVERSIZE , 0);
		FUNC1(sc, FEC_RMON_T_PACKETS, 0);
		FUNC1(sc, FEC_RMON_T_UNDERSIZE, 0);

		FUNC1(sc, FEC_MIBC_REG, mibc);
	}
}