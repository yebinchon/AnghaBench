
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pfsync_softc {int dummy; } ;
struct pfsync_deferral {struct pf_state* pd_st; struct mbuf* pd_m; struct pfsync_softc* pd_sc; } ;
struct pfsync_bucket {int b_snd; int b_deferred; int b_deferrals; } ;
struct pf_state {int state_flags; } ;
struct mbuf {int dummy; } ;


 int M_PFSYNC ;
 int PFSTATE_ACK ;
 int PFSYNC_BUCKET_LOCK_ASSERT (struct pfsync_bucket*) ;
 int TAILQ_REMOVE (int *,struct pfsync_deferral*,int ) ;
 int _IF_ENQUEUE (int *,struct mbuf*) ;
 int free (struct pfsync_deferral*,int ) ;
 int m_freem (struct mbuf*) ;
 int pd_entry ;
 int pf_release_state (struct pf_state*) ;
 struct pfsync_bucket* pfsync_get_bucket (struct pfsync_softc*,struct pf_state*) ;
 int pfsync_push (struct pfsync_bucket*) ;

__attribute__((used)) static void
pfsync_undefer(struct pfsync_deferral *pd, int drop)
{
 struct pfsync_softc *sc = pd->pd_sc;
 struct mbuf *m = pd->pd_m;
 struct pf_state *st = pd->pd_st;
 struct pfsync_bucket *b = pfsync_get_bucket(sc, st);

 PFSYNC_BUCKET_LOCK_ASSERT(b);

 TAILQ_REMOVE(&b->b_deferrals, pd, pd_entry);
 b->b_deferred--;
 pd->pd_st->state_flags &= ~PFSTATE_ACK;
 free(pd, M_PFSYNC);
 pf_release_state(st);

 if (drop)
  m_freem(m);
 else {
  _IF_ENQUEUE(&b->b_snd, m);
  pfsync_push(b);
 }
}
