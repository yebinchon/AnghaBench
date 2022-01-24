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
typedef  scalar_t__ u_int ;
struct sbni_softc {int state; struct mbuf* tx_buf_p; TYPE_1__* ifp; int /*<<< orphan*/  maxframe; int /*<<< orphan*/  framelen; int /*<<< orphan*/  tx_frameno; scalar_t__ pktlen; scalar_t__ outpos; } ;
struct mbuf {scalar_t__ m_len; struct mbuf* m_next; } ;
struct TYPE_2__ {int /*<<< orphan*/  if_drv_flags; int /*<<< orphan*/  if_snd; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,struct mbuf*) ; 
 int /*<<< orphan*/  CSR0 ; 
 int FL_NEED_RESEND ; 
 int FL_WAIT_ACK ; 
 int /*<<< orphan*/  IFF_DRV_OACTIVE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,struct mbuf*) ; 
 scalar_t__ SBNI_MIN_LEN ; 
 int TR_REQ ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct mbuf*) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int FUNC6 (struct sbni_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct sbni_softc*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void
FUNC8(struct sbni_softc *sc)
{
	struct mbuf *m;
	u_int len;

	/* sc->tx_buf_p == NULL here! */
	if (sc->tx_buf_p)
		FUNC5("sbni: memory leak!\n");

	sc->outpos = 0;
	sc->state &= ~(FL_WAIT_ACK | FL_NEED_RESEND);

	for (;;) {
		FUNC1(&sc->ifp->if_snd, sc->tx_buf_p);
		if (!sc->tx_buf_p) {
			/* nothing to transmit... */
			sc->pktlen     = 0;
			sc->tx_frameno = 0;
			sc->framelen   = 0;
			sc->ifp->if_drv_flags &= ~IFF_DRV_OACTIVE;
			return;
		}

		for (len = 0, m = sc->tx_buf_p;  m;  m = m->m_next)
			len += m->m_len;

		if (len != 0)
			break;
		FUNC3(sc->tx_buf_p);
	}

	if (len < SBNI_MIN_LEN)
		len = SBNI_MIN_LEN;

	sc->pktlen	= len;
	sc->tx_frameno	= FUNC2(len, sc->maxframe);
	sc->framelen	= FUNC4(len, sc->maxframe);

	FUNC7(sc, CSR0, FUNC6(sc, CSR0) | TR_REQ);
	sc->ifp->if_drv_flags |= IFF_DRV_OACTIVE;
	FUNC0(sc->ifp, sc->tx_buf_p);
}