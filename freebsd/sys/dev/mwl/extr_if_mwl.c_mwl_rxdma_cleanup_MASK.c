#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {scalar_t__ dd_desc_len; int /*<<< orphan*/ * dd_bufptr; } ;
struct mwl_softc {scalar_t__ sc_rxmem_paddr; TYPE_1__ sc_rxdma; int /*<<< orphan*/ * sc_rxmem; int /*<<< orphan*/  sc_rxmap; int /*<<< orphan*/  sc_rxdmat; } ;

/* Variables and functions */
 int /*<<< orphan*/  M_MWLDEV ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct mwl_softc*,TYPE_1__*) ; 

__attribute__((used)) static void
FUNC4(struct mwl_softc *sc)
{
	if (sc->sc_rxmem_paddr != 0) {
		FUNC0(sc->sc_rxdmat, sc->sc_rxmap);
		sc->sc_rxmem_paddr = 0;
	}
	if (sc->sc_rxmem != NULL) {
		FUNC1(sc->sc_rxdmat, sc->sc_rxmem, sc->sc_rxmap);
		sc->sc_rxmem = NULL;
	}
	if (sc->sc_rxdma.dd_bufptr != NULL) {
		FUNC2(sc->sc_rxdma.dd_bufptr, M_MWLDEV);
		sc->sc_rxdma.dd_bufptr = NULL;
	}
	if (sc->sc_rxdma.dd_desc_len != 0)
		FUNC3(sc, &sc->sc_rxdma);
}