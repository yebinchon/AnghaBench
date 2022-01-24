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
struct rtwn_softc {int rcr; } ;

/* Variables and functions */
 int R92C_RCR_AB ; 
 int R92C_RCR_AM ; 
 int R92C_RCR_APM ; 
 int R92C_RCR_APP_ICV ; 
 int R92C_RCR_APP_MIC ; 
 int R92C_RCR_APP_PHYSTS ; 
 int R92C_RCR_HTC_LOC_CTRL ; 
 int /*<<< orphan*/  R92C_RXFLTMAP1 ; 
 int /*<<< orphan*/  R92C_RXFLTMAP2 ; 
 int /*<<< orphan*/  FUNC0 (struct rtwn_softc*) ; 
 int /*<<< orphan*/  FUNC1 (struct rtwn_softc*) ; 
 int /*<<< orphan*/  FUNC2 (struct rtwn_softc*) ; 
 int /*<<< orphan*/  FUNC3 (struct rtwn_softc*,int /*<<< orphan*/ ,int) ; 

void
FUNC4(struct rtwn_softc *sc)
{

	FUNC0(sc);

	/* Setup multicast filter. */
	FUNC2(sc);

	/* Reject all control frames. */
	FUNC3(sc, R92C_RXFLTMAP1, 0x0000);

	/* Reject all data frames. */
	FUNC3(sc, R92C_RXFLTMAP2, 0x0000);

	/* Append generic Rx filter bits. */
	sc->rcr |= R92C_RCR_AM | R92C_RCR_AB | R92C_RCR_APM |
	    R92C_RCR_HTC_LOC_CTRL | R92C_RCR_APP_PHYSTS |
	    R92C_RCR_APP_ICV | R92C_RCR_APP_MIC;

	/* Update dynamic Rx filter parts. */
	FUNC1(sc);
}