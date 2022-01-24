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
 int ETIMEDOUT ; 
 int /*<<< orphan*/  R92C_MCUFWDL ; 
 int R92C_MCUFWDL_CHKSUM_RPT ; 
 int /*<<< orphan*/  RTWN_DEBUG_FIRMWARE ; 
 int /*<<< orphan*/  FUNC0 (struct rtwn_softc*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct rtwn_softc*,int) ; 
 int FUNC2 (struct rtwn_softc*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC3(struct rtwn_softc *sc)
{
	int ntries;

	for (ntries = 0; ntries < 25; ntries++) {
		if (FUNC2(sc, R92C_MCUFWDL) & R92C_MCUFWDL_CHKSUM_RPT)
			break;
		FUNC1(sc, 10000);
	}
	if (ntries == 25) {
		FUNC0(sc, RTWN_DEBUG_FIRMWARE,
		    "timeout waiting for checksum report\n");
		return (ETIMEDOUT);
	}

	return (0);
}