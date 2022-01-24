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
struct ip_moptions {int imo_multicast_vif; scalar_t__ imo_multicast_loop; int /*<<< orphan*/  imo_multicast_ttl; struct ifnet* imo_multicast_ifp; int /*<<< orphan*/  imo_head; } ;
struct pfsync_softc {int /*<<< orphan*/  sc_sync_peer; struct ip_moptions sc_imo; } ;
struct in_mfilter {int /*<<< orphan*/  imf_inm; } ;
struct ifnet {int if_flags; } ;

/* Variables and functions */
 int EADDRNOTAVAIL ; 
 int IFF_MULTICAST ; 
 int /*<<< orphan*/  PFSYNC_DFLTTL ; 
 int FUNC0 (struct ifnet*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,struct in_mfilter*) ; 

__attribute__((used)) static int
FUNC3(struct pfsync_softc *sc, struct ifnet *ifp,
    struct in_mfilter *imf)
{
	struct ip_moptions *imo = &sc->sc_imo;
	int error;

	if (!(ifp->if_flags & IFF_MULTICAST))
		return (EADDRNOTAVAIL);

	imo->imo_multicast_vif = -1;

	if ((error = FUNC0(ifp, &sc->sc_sync_peer, NULL,
	    &imf->imf_inm)) != 0)
		return (error);

	FUNC1(&imo->imo_head);
	FUNC2(&imo->imo_head, imf);
	imo->imo_multicast_ifp = ifp;
	imo->imo_multicast_ttl = PFSYNC_DFLTTL;
	imo->imo_multicast_loop = 0;

	return (0);
}