#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {scalar_t__ error; } ;
typedef  TYPE_1__ xdma_transfer_status_t ;
struct mbuf {int dummy; } ;
struct ifnet {int /*<<< orphan*/  if_drv_flags; } ;
struct atse_softc {int /*<<< orphan*/  txcount; int /*<<< orphan*/  xchan_tx; struct ifnet* atse_ifp; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct atse_softc*) ; 
 int /*<<< orphan*/  FUNC1 (struct atse_softc*) ; 
 int /*<<< orphan*/  IFCOUNTER_OERRORS ; 
 int /*<<< orphan*/  IFF_DRV_OACTIVE ; 
 int /*<<< orphan*/  FUNC2 (struct ifnet*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (struct mbuf*) ; 
 int FUNC4 (int /*<<< orphan*/ ,struct mbuf**,TYPE_1__*) ; 

__attribute__((used)) static int
FUNC5(void *arg, xdma_transfer_status_t *status)
{
	xdma_transfer_status_t st;
	struct atse_softc *sc;
	struct ifnet *ifp;
	struct mbuf *m;
	int err;

	sc = arg;

	FUNC0(sc);

	ifp = sc->atse_ifp;

	for (;;) {
		err = FUNC4(sc->xchan_tx, &m, &st);
		if (err != 0) {
			break;
		}

		if (st.error != 0) {
			FUNC2(ifp, IFCOUNTER_OERRORS, 1);
		}

		FUNC3(m);
		sc->txcount--;
	}

	ifp->if_drv_flags &= ~IFF_DRV_OACTIVE;

	FUNC1(sc);

	return (0);
}