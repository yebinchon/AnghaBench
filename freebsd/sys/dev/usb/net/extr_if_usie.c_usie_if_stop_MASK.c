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
struct usie_softc {int /*<<< orphan*/  sc_mtx; int /*<<< orphan*/ * sc_if_xfer; int /*<<< orphan*/  sc_if_sync_ch; } ;

/* Variables and functions */
 int /*<<< orphan*/  USIE_CNS_ID_STOP ; 
 int /*<<< orphan*/  USIE_CNS_OB_LINK_UPDATE ; 
 int /*<<< orphan*/  USIE_HIP_DOWN ; 
 size_t USIE_IF_RX ; 
 size_t USIE_IF_STATUS ; 
 size_t USIE_IF_TX ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct usie_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct usie_softc*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC6(struct usie_softc *sc)
{
	FUNC2(&sc->sc_if_sync_ch);

	FUNC0(&sc->sc_mtx);

	/* usie_cns_req() clears IFF_* flags */
	FUNC4(sc, USIE_CNS_ID_STOP, USIE_CNS_OB_LINK_UPDATE);

	FUNC3(sc->sc_if_xfer[USIE_IF_TX]);
	FUNC3(sc->sc_if_xfer[USIE_IF_RX]);
	FUNC3(sc->sc_if_xfer[USIE_IF_STATUS]);

	/* shutdown device */
	FUNC5(sc, USIE_HIP_DOWN);

	FUNC1(&sc->sc_mtx);
}