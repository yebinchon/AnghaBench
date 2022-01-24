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
struct sc_pcminfo {struct aic_softc* sc; } ;
struct aic_softc {int /*<<< orphan*/  xchan; } ;

/* Variables and functions */
 int /*<<< orphan*/  AICCR ; 
 int AICCR_ERPL ; 
 int AICCR_TDMS ; 
 int FUNC0 (struct aic_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct aic_softc*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  XDMA_CMD_TERMINATE ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC3(struct sc_pcminfo *scp)
{
	struct aic_softc *sc;
	int reg;

	sc = scp->sc;

	reg = FUNC0(sc, AICCR);
	reg &= ~(AICCR_TDMS | AICCR_ERPL);
	FUNC1(sc, AICCR, reg);

	FUNC2(sc->xchan, XDMA_CMD_TERMINATE);

	return (0);
}