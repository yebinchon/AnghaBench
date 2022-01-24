#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int /*<<< orphan*/  uint16_t ;
struct mbuf {int dummy; } ;
struct dtsec_softc {int /*<<< orphan*/  sc_txph; TYPE_2__* sc_ifnet; TYPE_1__* sc_mii; } ;
struct TYPE_4__ {int if_drv_flags; int /*<<< orphan*/  if_snd; } ;
struct TYPE_3__ {int mii_media_status; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct dtsec_softc*) ; 
 int E_OK ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int IFF_DRV_RUNNING ; 
 int IFM_ACTIVE ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,struct mbuf*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (struct mbuf*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct mbuf*) ; 
 int /*<<< orphan*/  FUNC8 (struct mbuf*,int /*<<< orphan*/ *) ; 

void
FUNC9(struct dtsec_softc *sc)
{
	uint8_t *buffer;
	uint16_t length;
	struct mbuf *m;
	int error;

	FUNC0(sc);
	/* TODO: IFF_DRV_OACTIVE */

	if ((sc->sc_mii->mii_media_status & IFM_ACTIVE) == 0)
		return;

	if ((sc->sc_ifnet->if_drv_flags & IFF_DRV_RUNNING) != IFF_DRV_RUNNING)
		return;

	while (!FUNC3(&sc->sc_ifnet->if_snd)) {
		FUNC2(&sc->sc_ifnet->if_snd, m);
		if (m == NULL)
			break;

		length = FUNC8(m, NULL);
		buffer = FUNC5(length, 0, sizeof(void *));
		if (!buffer) {
			FUNC7(m);
			break;
		}

		FUNC6(m, 0, length, buffer);
		FUNC7(m);

		error = FUNC1(sc->sc_txph, buffer, length, TRUE, buffer);
		if (error != E_OK) {
			/* TODO: Ring full */
			FUNC4(buffer);
			break;
		}
	}
}