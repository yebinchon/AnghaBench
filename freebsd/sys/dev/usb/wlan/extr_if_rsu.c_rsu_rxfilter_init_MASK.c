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
struct rsu_softc {scalar_t__ sc_rx_checksum_enable; } ;

/* Variables and functions */
 int /*<<< orphan*/  R92S_RCR ; 
 int /*<<< orphan*/  R92S_RCR_AICV ; 
 int /*<<< orphan*/  R92S_RCR_APP_PHYSTS ; 
 int /*<<< orphan*/  R92S_RCR_TCP_OFFLD_EN ; 
 int /*<<< orphan*/  FUNC0 (struct rsu_softc*) ; 
 int /*<<< orphan*/  FUNC1 (struct rsu_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct rsu_softc*) ; 
 int /*<<< orphan*/  FUNC3 (struct rsu_softc*) ; 
 int /*<<< orphan*/  FUNC4 (struct rsu_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC5(struct rsu_softc *sc)
{
	uint32_t reg;

	FUNC0(sc);

	/* Setup multicast filter. */
	FUNC3(sc);

	/* Adjust Rx filter. */
	reg = FUNC1(sc, R92S_RCR);
	reg &= ~R92S_RCR_AICV;
	reg |= R92S_RCR_APP_PHYSTS;
	if (sc->sc_rx_checksum_enable)
		reg |= R92S_RCR_TCP_OFFLD_EN;
	FUNC4(sc, R92S_RCR, reg);

	/* Update dynamic Rx filter parts. */
	FUNC2(sc);
}