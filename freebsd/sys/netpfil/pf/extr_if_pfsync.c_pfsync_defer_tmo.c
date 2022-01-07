
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct pfsync_softc {int dummy; } ;
struct pfsync_deferral {scalar_t__ pd_refs; struct pf_state* pd_st; struct mbuf* pd_m; struct pfsync_softc* pd_sc; } ;
struct pfsync_bucket {int b_deferred; int b_deferrals; } ;
struct pf_state {int state_flags; } ;
struct TYPE_4__ {TYPE_1__* rcvif; } ;
struct mbuf {TYPE_2__ m_pkthdr; } ;
struct TYPE_3__ {int if_vnet; } ;


 int CURVNET_RESTORE () ;
 int CURVNET_SET (int ) ;
 int M_PFSYNC ;
 int PFSTATE_ACK ;
 int PFSYNC_BUCKET_LOCK_ASSERT (struct pfsync_bucket*) ;
 int PFSYNC_UNLOCK (struct pfsync_softc*) ;
 int TAILQ_REMOVE (int *,struct pfsync_deferral*,int ) ;
 int free (struct pfsync_deferral*,int ) ;
 int ip_output (struct mbuf*,int *,int *,int ,int *,int *) ;
 int pd_entry ;
 int pf_release_state (struct pf_state*) ;
 struct pfsync_bucket* pfsync_get_bucket (struct pfsync_softc*,struct pf_state*) ;

__attribute__((used)) static void
pfsync_defer_tmo(void *arg)
{
 struct pfsync_deferral *pd = arg;
 struct pfsync_softc *sc = pd->pd_sc;
 struct mbuf *m = pd->pd_m;
 struct pf_state *st = pd->pd_st;
 struct pfsync_bucket *b = pfsync_get_bucket(sc, st);

 PFSYNC_BUCKET_LOCK_ASSERT(b);

 CURVNET_SET(m->m_pkthdr.rcvif->if_vnet);

 TAILQ_REMOVE(&b->b_deferrals, pd, pd_entry);
 b->b_deferred--;
 pd->pd_st->state_flags &= ~PFSTATE_ACK;
 if (pd->pd_refs == 0)
  free(pd, M_PFSYNC);
 PFSYNC_UNLOCK(sc);

 ip_output(m, ((void*)0), ((void*)0), 0, ((void*)0), ((void*)0));

 pf_release_state(st);

 CURVNET_RESTORE();
}
