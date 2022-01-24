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
struct sbni_softc {int state; TYPE_1__* ifp; scalar_t__ outpos; scalar_t__ framelen; scalar_t__ tx_frameno; struct mbuf* tx_buf_p; } ;
struct mbuf {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  if_drv_flags; int /*<<< orphan*/  if_snd; } ;

/* Variables and functions */
 int FL_NEED_RESEND ; 
 int FL_WAIT_ACK ; 
 int /*<<< orphan*/  IFCOUNTER_OERRORS ; 
 int /*<<< orphan*/  IFF_DRV_OACTIVE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,struct mbuf*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (struct mbuf*) ; 

__attribute__((used)) static void
FUNC3(struct sbni_softc *sc)
{
	struct mbuf *m;

	if (sc->tx_buf_p) {
		FUNC2(sc->tx_buf_p);
		sc->tx_buf_p = NULL;
		FUNC1(sc->ifp, IFCOUNTER_OERRORS, 1);
	}

	for (;;) {
		FUNC0(&sc->ifp->if_snd, m);
		if (m == NULL)
			break;
		FUNC2(m);
		FUNC1(sc->ifp, IFCOUNTER_OERRORS, 1);
	}

	sc->tx_frameno	= 0;
	sc->framelen	= 0;
	sc->outpos	= 0;
	sc->state &= ~(FL_WAIT_ACK | FL_NEED_RESEND);
	sc->ifp->if_drv_flags &= ~IFF_DRV_OACTIVE;
}