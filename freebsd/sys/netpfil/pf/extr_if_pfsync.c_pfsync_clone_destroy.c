
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pfsync_softc {scalar_t__ b_deferred; int sc_flags; struct pfsync_softc* sc_buckets; int sc_bulk_mtx; int sc_mtx; int sc_bulk_tmo; int sc_bulkfail_tmo; int b_tmo; int pd_tmo; int pd_refs; int pd_m; int pd_st; int b_deferrals; } ;
struct pfsync_deferral {scalar_t__ b_deferred; int sc_flags; struct pfsync_deferral* sc_buckets; int sc_bulk_mtx; int sc_mtx; int sc_bulk_tmo; int sc_bulkfail_tmo; int b_tmo; int pd_tmo; int pd_refs; int pd_m; int pd_st; int b_deferrals; } ;
struct pfsync_bucket {scalar_t__ b_deferred; int sc_flags; struct pfsync_bucket* sc_buckets; int sc_bulk_mtx; int sc_mtx; int sc_bulk_tmo; int sc_bulkfail_tmo; int b_tmo; int pd_tmo; int pd_refs; int pd_m; int pd_st; int b_deferrals; } ;
struct ifnet {struct pfsync_softc* if_softc; } ;


 int M_PFSYNC ;
 int PFSYNCF_OK ;
 struct pfsync_softc* TAILQ_FIRST (int *) ;
 int TAILQ_REMOVE (int *,struct pfsync_softc*,int ) ;
 int V_pfsync_carp_adj ;
 int * V_pfsyncif ;
 int bpfdetach (struct ifnet*) ;
 int callout_drain (int *) ;
 scalar_t__ callout_stop (int *) ;
 int carp_demote_adj_p (int ,char*) ;
 int free (struct pfsync_softc*,int ) ;
 int if_detach (struct ifnet*) ;
 int if_free (struct ifnet*) ;
 int m_freem (int ) ;
 int mtx_destroy (int *) ;
 int pd_entry ;
 int pf_release_state (int ) ;
 int pfsync_buckets ;
 int pfsync_drop (struct pfsync_softc*) ;
 int pfsync_multicast_cleanup (struct pfsync_softc*) ;
 int stub1 (int ,char*) ;

__attribute__((used)) static void
pfsync_clone_destroy(struct ifnet *ifp)
{
 struct pfsync_softc *sc = ifp->if_softc;
 struct pfsync_bucket *b;
 int c;

 for (c = 0; c < pfsync_buckets; c++) {
  b = &sc->sc_buckets[c];





  while (b->b_deferred > 0) {
   struct pfsync_deferral *pd =
       TAILQ_FIRST(&b->b_deferrals);

   TAILQ_REMOVE(&b->b_deferrals, pd, pd_entry);
   b->b_deferred--;
   if (callout_stop(&pd->pd_tmo) > 0) {
    pf_release_state(pd->pd_st);
    m_freem(pd->pd_m);
    free(pd, M_PFSYNC);
   } else {
    pd->pd_refs++;
    callout_drain(&pd->pd_tmo);
    free(pd, M_PFSYNC);
   }
  }

  callout_drain(&b->b_tmo);
 }

 callout_drain(&sc->sc_bulkfail_tmo);
 callout_drain(&sc->sc_bulk_tmo);

 if (!(sc->sc_flags & PFSYNCF_OK) && carp_demote_adj_p)
  (*carp_demote_adj_p)(-V_pfsync_carp_adj, "pfsync destroy");
 bpfdetach(ifp);
 if_detach(ifp);

 pfsync_drop(sc);

 if_free(ifp);
 pfsync_multicast_cleanup(sc);
 mtx_destroy(&sc->sc_mtx);
 mtx_destroy(&sc->sc_bulk_mtx);

 free(sc->sc_buckets, M_PFSYNC);
 free(sc, M_PFSYNC);

 V_pfsyncif = ((void*)0);
}
