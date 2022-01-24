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
struct fsl_espi_softc {int sc_flags; int /*<<< orphan*/  sc_dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  ESPI_SPIE ; 
 int ESPI_SPIE_DON ; 
 int FSL_ESPI_BUSY ; 
 int /*<<< orphan*/  FUNC0 (struct fsl_espi_softc*) ; 
 int FUNC1 (struct fsl_espi_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct fsl_espi_softc*) ; 
 int /*<<< orphan*/  FUNC3 (struct fsl_espi_softc*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (struct fsl_espi_softc*) ; 
 int /*<<< orphan*/  FUNC5 (struct fsl_espi_softc*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC7(void *arg)
{
	struct fsl_espi_softc *sc;
	uint32_t spie;

	sc = (struct fsl_espi_softc *)arg;
	FUNC0(sc);

	/* Filter stray interrupts. */
	if ((sc->sc_flags & FSL_ESPI_BUSY) == 0) {
		FUNC2(sc);
		return;
	}
	spie = FUNC1(sc, ESPI_SPIE);
	FUNC3(sc, ESPI_SPIE, spie);

	/* TX - Fill up the FIFO. */
	FUNC5(sc);

	/* RX - Drain the FIFO. */
	FUNC4(sc);

	/* Check for end of transfer. */
	if (spie & ESPI_SPIE_DON)
		FUNC6(sc->sc_dev);

	FUNC2(sc);
}