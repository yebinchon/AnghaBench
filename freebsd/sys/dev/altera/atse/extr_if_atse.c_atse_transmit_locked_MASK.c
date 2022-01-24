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
struct mbuf {int dummy; } ;
struct ifnet {struct atse_softc* if_softc; } ;
struct buf_ring {int dummy; } ;
struct atse_softc {int /*<<< orphan*/  xchan_tx; int /*<<< orphan*/  txcount; struct buf_ring* br; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ifnet*,struct mbuf*) ; 
 int /*<<< orphan*/  XDMA_MEM_TO_DEV ; 
 int /*<<< orphan*/  FUNC1 (struct ifnet*,struct buf_ring*) ; 
 struct mbuf* FUNC2 (struct ifnet*,struct buf_ring*) ; 
 int /*<<< orphan*/  FUNC3 (struct ifnet*,struct buf_ring*,struct mbuf*) ; 
 int FUNC4 (int /*<<< orphan*/ ,struct mbuf**,int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC6(struct ifnet *ifp)
{
	struct atse_softc *sc;
	struct mbuf *m;
	struct buf_ring *br;
	int error;
	int enq;

	sc = ifp->if_softc;
	br = sc->br;

	enq = 0;

	while ((m = FUNC2(ifp, br)) != NULL) {
		error = FUNC4(sc->xchan_tx, &m, 0, 4, 4, XDMA_MEM_TO_DEV);
		if (error != 0) {
			/* No space in request queue available yet. */
			FUNC3(ifp, br, m);
			break;
		}

		FUNC1(ifp, br);

		sc->txcount++;
		enq++;

		/* If anyone is interested give them a copy. */
		FUNC0(ifp, m);
        }

	if (enq > 0)
		FUNC5(sc->xchan_tx);

	return (0);
}