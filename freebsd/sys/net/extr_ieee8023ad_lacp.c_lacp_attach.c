
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct lagg_softc {TYPE_1__* sc_ifp; struct lacp_softc* sc_psc; } ;
struct lacp_softc {int lsc_mtx; int lsc_callout; int lsc_transit_callout; int lsc_ports; int lsc_aggregators; int lsc_strict_mode; int * lsc_active_aggregator; int lsc_hashkey; struct lagg_softc* lsc_softc; } ;
struct TYPE_2__ {int if_drv_flags; } ;


 int IFF_DRV_RUNNING ;
 int LACP_LOCK_INIT (struct lacp_softc*) ;
 int LIST_INIT (int *) ;
 int M_DEVBUF ;
 int M_WAITOK ;
 int M_ZERO ;
 int TAILQ_INIT (int *) ;
 int VNET (int ) ;
 int callout_init_mtx (int *,int *,int ) ;
 int lacp_default_strict_mode ;
 int lacp_init (struct lagg_softc*) ;
 int m_ether_tcpip_hash_init () ;
 struct lacp_softc* malloc (int,int ,int) ;

void
lacp_attach(struct lagg_softc *sc)
{
 struct lacp_softc *lsc;

 lsc = malloc(sizeof(struct lacp_softc), M_DEVBUF, M_WAITOK | M_ZERO);

 sc->sc_psc = lsc;
 lsc->lsc_softc = sc;

 lsc->lsc_hashkey = m_ether_tcpip_hash_init();
 lsc->lsc_active_aggregator = ((void*)0);
 lsc->lsc_strict_mode = VNET(lacp_default_strict_mode);
 LACP_LOCK_INIT(lsc);
 TAILQ_INIT(&lsc->lsc_aggregators);
 LIST_INIT(&lsc->lsc_ports);

 callout_init_mtx(&lsc->lsc_transit_callout, &lsc->lsc_mtx, 0);
 callout_init_mtx(&lsc->lsc_callout, &lsc->lsc_mtx, 0);


 if (sc->sc_ifp->if_drv_flags & IFF_DRV_RUNNING)
  lacp_init(sc);
}
