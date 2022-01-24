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
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int uint32_t ;
struct rtwn_softc {struct r92c_softc* sc_priv; } ;
struct r92c_softc {int /*<<< orphan*/ * rf_read_delay; } ;

/* Variables and functions */
 int FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int R92C_HSSI_PARAM1_PI ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  R92C_HSSI_PARAM2_READ_ADDR ; 
 int R92C_HSSI_PARAM2_READ_EDGE ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  R92C_LSSI_READBACK_DATA ; 
 int R92C_MAX_CHAINS ; 
 int FUNC5 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC6 (struct rtwn_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct rtwn_softc*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC8 (struct rtwn_softc*,int /*<<< orphan*/ ) ; 

uint32_t
FUNC9(struct rtwn_softc *sc, int chain, uint8_t addr)
{
	struct r92c_softc *rs = sc->sc_priv;
	uint32_t reg[R92C_MAX_CHAINS], val;

	reg[0] = FUNC6(sc, FUNC3(0));
	if (chain != 0)
		reg[chain] = FUNC6(sc, FUNC3(chain));

	FUNC7(sc, FUNC3(0),
	    reg[0] & ~R92C_HSSI_PARAM2_READ_EDGE);
	FUNC8(sc, rs->rf_read_delay[0]);

	FUNC7(sc, FUNC3(chain),
	    FUNC5(reg[chain], R92C_HSSI_PARAM2_READ_ADDR, addr) |
	    R92C_HSSI_PARAM2_READ_EDGE);
	FUNC8(sc, rs->rf_read_delay[1]);

	FUNC7(sc, FUNC3(0),
	    reg[0] | R92C_HSSI_PARAM2_READ_EDGE);
	FUNC8(sc, rs->rf_read_delay[2]);

	if (FUNC6(sc, FUNC2(chain)) & R92C_HSSI_PARAM1_PI)
		val = FUNC6(sc, FUNC1(chain));
	else
		val = FUNC6(sc, FUNC4(chain));
	return (FUNC0(val, R92C_LSSI_READBACK_DATA));
}