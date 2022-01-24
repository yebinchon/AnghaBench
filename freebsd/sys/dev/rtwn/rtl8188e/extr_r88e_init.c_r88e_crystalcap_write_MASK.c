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
typedef  int /*<<< orphan*/  uint32_t ;
struct rtwn_softc {struct r92c_softc* sc_priv; } ;
struct r92c_softc {int crystalcap; } ;

/* Variables and functions */
 int /*<<< orphan*/  R92C_AFE_XTAL_CTRL ; 
 int /*<<< orphan*/  R92C_AFE_XTAL_CTRL_ADDR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (struct rtwn_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct rtwn_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC3(struct rtwn_softc *sc)
{
	struct r92c_softc *rs = sc->sc_priv;
	uint32_t reg;
	uint8_t val;

	val = rs->crystalcap & 0x3f;
	reg = FUNC1(sc, R92C_AFE_XTAL_CTRL);
	FUNC2(sc, R92C_AFE_XTAL_CTRL,
	    FUNC0(reg, R92C_AFE_XTAL_CTRL_ADDR, val | val << 6));
}