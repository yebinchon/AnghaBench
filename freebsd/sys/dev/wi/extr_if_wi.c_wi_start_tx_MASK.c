#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  ic_oerrors; } ;
struct wi_softc {int sc_txnext; int sc_txcur; int sc_tx_timer; TYPE_3__* sc_txd; int /*<<< orphan*/  sc_dev; TYPE_2__ sc_ic; } ;
struct wi_frame {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  len; } ;
struct mbuf {TYPE_1__ m_pkthdr; } ;
struct TYPE_6__ {int d_fid; int d_len; } ;

/* Variables and functions */
 int WI_CMD_TX ; 
 int WI_RECLAIM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct mbuf*) ; 
 scalar_t__ FUNC3 (struct wi_softc*,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (struct wi_softc*,int,int,struct mbuf*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (struct wi_softc*,int,int /*<<< orphan*/ ,struct wi_frame*,int) ; 

__attribute__((used)) static int
FUNC6(struct wi_softc *sc, struct wi_frame *frmhdr, struct mbuf *m0)
{
	int cur = sc->sc_txnext;
	int fid, off, error;

	fid = sc->sc_txd[cur].d_fid;
	off = sizeof(*frmhdr);
	error = FUNC5(sc, fid, 0, frmhdr, sizeof(*frmhdr)) != 0
	     || FUNC4(sc, fid, off, m0, m0->m_pkthdr.len) != 0;
	FUNC2(m0);
	if (error) {
		FUNC0(sc->sc_ic.ic_oerrors, 1);
		return -1;
	}
	sc->sc_txd[cur].d_len = off;
	if (sc->sc_txcur == cur) {
		if (FUNC3(sc, WI_CMD_TX | WI_RECLAIM, fid, 0, 0)) {
			FUNC1(sc->sc_dev, "xmit failed\n");
			sc->sc_txd[cur].d_len = 0;
			return -1;
		}
		sc->sc_tx_timer = 5;
	}
	return 0;
}