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
typedef  int /*<<< orphan*/  uint32_t ;
struct rtwn_softc {int dummy; } ;

/* Variables and functions */
 int ETIMEDOUT ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  R92C_LLT_INIT ; 
 int /*<<< orphan*/  R92C_LLT_INIT_ADDR ; 
 int /*<<< orphan*/  R92C_LLT_INIT_DATA ; 
 int /*<<< orphan*/  R92C_LLT_INIT_OP ; 
 scalar_t__ R92C_LLT_INIT_OP_NO_ACTIVE ; 
 int /*<<< orphan*/  R92C_LLT_INIT_OP_WRITE ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct rtwn_softc*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct rtwn_softc*,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct rtwn_softc*,int /*<<< orphan*/ ,int) ; 

int
FUNC5(struct rtwn_softc *sc, uint32_t addr, uint32_t data)
{
	int ntries, error;

	error = FUNC4(sc, R92C_LLT_INIT,
	    FUNC1(R92C_LLT_INIT_OP, R92C_LLT_INIT_OP_WRITE) |
	    FUNC1(R92C_LLT_INIT_ADDR, addr) |
	    FUNC1(R92C_LLT_INIT_DATA, data));
	if (error != 0)
		return (error);
	/* Wait for write operation to complete. */
	for (ntries = 0; ntries < 20; ntries++) {
		if (FUNC0(FUNC3(sc, R92C_LLT_INIT), R92C_LLT_INIT_OP) ==
		    R92C_LLT_INIT_OP_NO_ACTIVE)
			return (0);
		FUNC2(sc, 10);
	}
	return (ETIMEDOUT);
}