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
struct cesa_softc {int /*<<< orphan*/  sc_data_dtag; int /*<<< orphan*/  sc_free_sdesc; int /*<<< orphan*/  sc_free_tdesc; } ;
struct cesa_request {scalar_t__ cr_dmap_loaded; int /*<<< orphan*/  cr_dmap; int /*<<< orphan*/  cr_sdesc; int /*<<< orphan*/  cr_tdesc; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct cesa_softc*,struct cesa_request*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct cesa_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct cesa_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  requests ; 
 int /*<<< orphan*/  sdesc ; 
 int /*<<< orphan*/  tdesc ; 

__attribute__((used)) static void
FUNC5(struct cesa_softc *sc, struct cesa_request *cr)
{

	/* Free TDMA descriptors assigned to this request */
	FUNC1(sc, tdesc);
	FUNC3(&sc->sc_free_tdesc, &cr->cr_tdesc);
	FUNC2(sc, tdesc);

	/* Free SA descriptors assigned to this request */
	FUNC1(sc, sdesc);
	FUNC3(&sc->sc_free_sdesc, &cr->cr_sdesc);
	FUNC2(sc, sdesc);

	/* Unload DMA memory associated with request */
	if (cr->cr_dmap_loaded) {
		FUNC4(sc->sc_data_dtag, cr->cr_dmap);
		cr->cr_dmap_loaded = 0;
	}

	FUNC0(sc, cr, requests);
}