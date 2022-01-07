
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pfsync_softc {int sc_bulk_hashid; scalar_t__ sc_ureq_received; int sc_bulk_tmo; int sc_bulk_creatorid; int sc_bulk_stateid; TYPE_1__* sc_ifp; } ;
struct pf_state {scalar_t__ sync_state; scalar_t__ timeout; scalar_t__ pfsync_time; int creatorid; int id; } ;
struct pf_idhash {int states; } ;
struct TYPE_2__ {int if_vnet; } ;


 int CURVNET_RESTORE () ;
 int CURVNET_SET (int ) ;
 struct pf_state* LIST_FIRST (int *) ;
 struct pf_state* LIST_NEXT (struct pf_state*,int ) ;
 int PFSYNC_BLOCK_ASSERT (struct pfsync_softc*) ;
 int PFSYNC_BUS_END ;
 scalar_t__ PFSYNC_S_NONE ;
 scalar_t__ PFTM_MAX ;
 int PF_HASHROW_ASSERT (struct pf_idhash*) ;
 int PF_HASHROW_LOCK (struct pf_idhash*) ;
 int PF_HASHROW_UNLOCK (struct pf_idhash*) ;
 int PF_IDHASH (struct pf_state*) ;
 struct pf_idhash* V_pf_idhash ;
 int callout_reset (int *,int,void (*) (void*),struct pfsync_softc*) ;
 int entry ;
 struct pf_state* pf_find_state_byid (int ,int ) ;
 int pf_hashmask ;
 int pfsync_bulk_status (int ) ;
 scalar_t__ pfsync_update_state_req (struct pf_state*) ;

__attribute__((used)) static void
pfsync_bulk_update(void *arg)
{
 struct pfsync_softc *sc = arg;
 struct pf_state *s;
 int i, sent = 0;

 PFSYNC_BLOCK_ASSERT(sc);
 CURVNET_SET(sc->sc_ifp->if_vnet);






 s = pf_find_state_byid(sc->sc_bulk_stateid, sc->sc_bulk_creatorid);

 if (s != ((void*)0))
  i = PF_IDHASH(s);
 else
  i = sc->sc_bulk_hashid;

 for (; i <= pf_hashmask; i++) {
  struct pf_idhash *ih = &V_pf_idhash[i];

  if (s != ((void*)0))
   PF_HASHROW_ASSERT(ih);
  else {
   PF_HASHROW_LOCK(ih);
   s = LIST_FIRST(&ih->states);
  }

  for (; s; s = LIST_NEXT(s, entry)) {
   if (s->sync_state == PFSYNC_S_NONE &&
       s->timeout < PFTM_MAX &&
       s->pfsync_time <= sc->sc_ureq_received) {
    if (pfsync_update_state_req(s)) {

     sc->sc_bulk_hashid = i;
     sc->sc_bulk_stateid = s->id;
     sc->sc_bulk_creatorid = s->creatorid;
     PF_HASHROW_UNLOCK(ih);
     callout_reset(&sc->sc_bulk_tmo, 1,
         pfsync_bulk_update, sc);
     goto full;
    }
    sent++;
   }
  }
  PF_HASHROW_UNLOCK(ih);
 }


 pfsync_bulk_status(PFSYNC_BUS_END);
full:
 CURVNET_RESTORE();
}
