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
struct rtwn_softc {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  R92C_EFUSE_ACCESS ; 
 int /*<<< orphan*/  R92C_EFUSE_ACCESS_ON ; 
 int /*<<< orphan*/  R92C_SYS_CLKR ; 
 int R92C_SYS_CLKR_ANA8M ; 
 int R92C_SYS_CLKR_LOADER_EN ; 
 int /*<<< orphan*/  R92C_SYS_FUNC_EN ; 
 int R92C_SYS_FUNC_EN_ELDR ; 
 int FUNC0 (struct rtwn_softc*,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct rtwn_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct rtwn_softc*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int
FUNC3(struct rtwn_softc *sc)
{
	uint32_t reg;
	int error;

	error = FUNC1(sc, R92C_EFUSE_ACCESS, R92C_EFUSE_ACCESS_ON);
	if (error != 0)
		return (error);

	reg = FUNC0(sc, R92C_SYS_FUNC_EN);
	if (!(reg & R92C_SYS_FUNC_EN_ELDR)) {
		error = FUNC2(sc, R92C_SYS_FUNC_EN,
		    reg | R92C_SYS_FUNC_EN_ELDR);
		if (error != 0)
			return (error);
	}
	reg = FUNC0(sc, R92C_SYS_CLKR);
	if ((reg & (R92C_SYS_CLKR_LOADER_EN | R92C_SYS_CLKR_ANA8M)) !=
	    (R92C_SYS_CLKR_LOADER_EN | R92C_SYS_CLKR_ANA8M)) {
		error = FUNC2(sc, R92C_SYS_CLKR,
		    reg | R92C_SYS_CLKR_LOADER_EN | R92C_SYS_CLKR_ANA8M);
		if (error != 0)
			return (error);
	}

	return (0);
}