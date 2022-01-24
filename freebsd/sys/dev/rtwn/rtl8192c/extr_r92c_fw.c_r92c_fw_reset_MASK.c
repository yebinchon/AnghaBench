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
 scalar_t__ R92C_HMETFR ; 
 int /*<<< orphan*/  R92C_SYS_FUNC_EN ; 
 int R92C_SYS_FUNC_EN_CPUEN ; 
 int RTWN_FW_RESET_CHECKSUM ; 
 int /*<<< orphan*/  FUNC0 (struct rtwn_softc*,int) ; 
 int FUNC1 (struct rtwn_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct rtwn_softc*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (struct rtwn_softc*,scalar_t__,int) ; 

void
FUNC4(struct rtwn_softc *sc, int reason)
{
	int ntries;

	if (reason == RTWN_FW_RESET_CHECKSUM)
		return;

	/* Tell 8051 to reset itself. */
	FUNC3(sc, R92C_HMETFR + 3, 0x20);

	/* Wait until 8051 resets by itself. */
	for (ntries = 0; ntries < 100; ntries++) {
		if ((FUNC1(sc, R92C_SYS_FUNC_EN) &
		    R92C_SYS_FUNC_EN_CPUEN) == 0)
			return;
		FUNC0(sc, 50);
	}
	/* Force 8051 reset. */
	FUNC2(sc, R92C_SYS_FUNC_EN,
	    R92C_SYS_FUNC_EN_CPUEN, 0, 1);
}