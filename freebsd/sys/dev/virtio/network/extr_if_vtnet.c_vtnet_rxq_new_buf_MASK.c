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
struct vtnet_softc {int /*<<< orphan*/  vtnet_rx_nmbufs; } ;
struct vtnet_rxq {struct vtnet_softc* vtnrx_sc; } ;
struct mbuf {int dummy; } ;

/* Variables and functions */
 int ENOBUFS ; 
 int /*<<< orphan*/  FUNC0 (struct mbuf*) ; 
 struct mbuf* FUNC1 (struct vtnet_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC2 (struct vtnet_rxq*,struct mbuf*) ; 

__attribute__((used)) static int
FUNC3(struct vtnet_rxq *rxq)
{
	struct vtnet_softc *sc;
	struct mbuf *m;
	int error;

	sc = rxq->vtnrx_sc;

	m = FUNC1(sc, sc->vtnet_rx_nmbufs, NULL);
	if (m == NULL)
		return (ENOBUFS);

	error = FUNC2(rxq, m);
	if (error)
		FUNC0(m);

	return (error);
}