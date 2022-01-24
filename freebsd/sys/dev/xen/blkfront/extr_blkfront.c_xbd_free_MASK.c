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
struct xbd_softc {int xbd_max_requests; int xbd_max_request_indirectpages; int /*<<< orphan*/  xen_intr_handle; int /*<<< orphan*/  xbd_io_dmat; struct xbd_command* xbd_shadow; int /*<<< orphan*/  xbd_io_lock; int /*<<< orphan*/  xbd_state; } ;
struct xbd_command {int /*<<< orphan*/  cm_map; int /*<<< orphan*/ * cm_indirectionpages; int /*<<< orphan*/ * cm_indirectionrefs; struct xbd_command* cm_sg_refs; } ;

/* Variables and functions */
 int /*<<< orphan*/  M_XENBLOCKFRONT ; 
 int PAGE_SIZE ; 
 int /*<<< orphan*/  XBD_Q_COMPLETE ; 
 int /*<<< orphan*/  XBD_Q_FREE ; 
 int /*<<< orphan*/  XBD_Q_READY ; 
 int /*<<< orphan*/  XBD_STATE_DISCONNECTED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct xbd_command*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct xbd_softc*) ; 
 int /*<<< orphan*/  FUNC8 (struct xbd_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void 
FUNC10(struct xbd_softc *sc)
{
	int i;
	
	/* Prevent new requests being issued until we fix things up. */
	FUNC5(&sc->xbd_io_lock);
	sc->xbd_state = XBD_STATE_DISCONNECTED; 
	FUNC6(&sc->xbd_io_lock);

	/* Free resources associated with old device channel. */
	FUNC7(sc);
	if (sc->xbd_shadow) {

		for (i = 0; i < sc->xbd_max_requests; i++) {
			struct xbd_command *cm;

			cm = &sc->xbd_shadow[i];
			if (cm->cm_sg_refs != NULL) {
				FUNC3(cm->cm_sg_refs, M_XENBLOCKFRONT);
				cm->cm_sg_refs = NULL;
			}

			if (cm->cm_indirectionpages != NULL) {
				FUNC4(
				    sc->xbd_max_request_indirectpages,
				    &cm->cm_indirectionrefs[0]);
				FUNC2(cm->cm_indirectionpages, PAGE_SIZE *
				    sc->xbd_max_request_indirectpages,
				    M_XENBLOCKFRONT);
				cm->cm_indirectionpages = NULL;
			}

			FUNC1(sc->xbd_io_dmat, cm->cm_map);
		}
		FUNC3(sc->xbd_shadow, M_XENBLOCKFRONT);
		sc->xbd_shadow = NULL;

		FUNC0(sc->xbd_io_dmat);
		
		FUNC8(sc, XBD_Q_FREE);
		FUNC8(sc, XBD_Q_READY);
		FUNC8(sc, XBD_Q_COMPLETE);
	}
		
	FUNC9(&sc->xen_intr_handle);

}