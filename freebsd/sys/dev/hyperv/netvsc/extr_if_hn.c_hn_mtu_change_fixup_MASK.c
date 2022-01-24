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
struct ifnet {int /*<<< orphan*/  if_mtu; } ;
struct hn_softc {TYPE_2__* hn_rx_ring; struct ifnet* hn_ifp; } ;
struct TYPE_3__ {scalar_t__ lro_length_lim; } ;
struct TYPE_4__ {TYPE_1__ hn_lro; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct hn_softc*) ; 
 scalar_t__ FUNC1 (struct ifnet*) ; 
 int /*<<< orphan*/  FUNC2 (struct hn_softc*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (struct hn_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  hn_tso_maxlen ; 

__attribute__((used)) static void
FUNC4(struct hn_softc *sc)
{
	struct ifnet *ifp;

	FUNC0(sc);
	ifp = sc->hn_ifp;

	FUNC3(sc, hn_tso_maxlen, ifp->if_mtu);
#if __FreeBSD_version >= 1100099
	if (sc->hn_rx_ring[0].hn_lro.lro_length_lim < HN_LRO_LENLIM_MIN(ifp))
		hn_set_lro_lenlim(sc, HN_LRO_LENLIM_MIN(ifp));
#endif
}