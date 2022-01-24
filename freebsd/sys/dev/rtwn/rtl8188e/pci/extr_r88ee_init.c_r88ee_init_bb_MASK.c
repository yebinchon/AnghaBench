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
struct rtwn_softc {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  R92C_RF_CTRL ; 
 int R92C_RF_CTRL_EN ; 
 int R92C_RF_CTRL_RSTB ; 
 int R92C_RF_CTRL_SDMRSTB ; 
 int /*<<< orphan*/  R92C_SYS_FUNC_EN ; 
 int R92C_SYS_FUNC_EN_BBRSTB ; 
 int R92C_SYS_FUNC_EN_BB_GLB_RST ; 
 int R92C_SYS_FUNC_EN_DIO_PCIE ; 
 int R92C_SYS_FUNC_EN_DIO_RF ; 
 int R92C_SYS_FUNC_EN_PCIEA ; 
 int R92C_SYS_FUNC_EN_PPLL ; 
 int /*<<< orphan*/  FUNC0 (struct rtwn_softc*) ; 
 int /*<<< orphan*/  FUNC1 (struct rtwn_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (struct rtwn_softc*,int /*<<< orphan*/ ,int) ; 

void
FUNC3(struct rtwn_softc *sc)
{

	/* Enable BB and RF. */
	FUNC1(sc, R92C_SYS_FUNC_EN, 0,
	    R92C_SYS_FUNC_EN_BBRSTB | R92C_SYS_FUNC_EN_BB_GLB_RST |
	    R92C_SYS_FUNC_EN_DIO_RF);

	FUNC2(sc, R92C_RF_CTRL,
	    R92C_RF_CTRL_EN | R92C_RF_CTRL_RSTB | R92C_RF_CTRL_SDMRSTB);
	FUNC2(sc, R92C_SYS_FUNC_EN, R92C_SYS_FUNC_EN_PPLL |
	    R92C_SYS_FUNC_EN_PCIEA | R92C_SYS_FUNC_EN_DIO_PCIE |
	    R92C_SYS_FUNC_EN_BB_GLB_RST | R92C_SYS_FUNC_EN_BBRSTB);

	FUNC0(sc);
}