
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct pfsync_softc {int sc_flags; scalar_t__ sc_bulk_tries; scalar_t__ sc_ureq_sent; int sc_bulkfail_tmo; TYPE_1__* sc_ifp; struct pfsync_bucket* sc_buckets; } ;
struct pfsync_bucket {int dummy; } ;
struct TYPE_4__ {scalar_t__ debug; } ;
struct TYPE_3__ {int if_vnet; } ;


 int CURVNET_RESTORE () ;
 int CURVNET_SET (int ) ;
 int PFSYNCF_OK ;
 int PFSYNC_BLOCK_ASSERT (struct pfsync_softc*) ;
 int PFSYNC_BUCKET_LOCK (struct pfsync_bucket*) ;
 int PFSYNC_BUCKET_UNLOCK (struct pfsync_bucket*) ;
 int PFSYNC_LOCK (struct pfsync_softc*) ;
 scalar_t__ PFSYNC_MAX_BULKTRIES ;
 int PFSYNC_UNLOCK (struct pfsync_softc*) ;
 scalar_t__ PF_DEBUG_MISC ;
 TYPE_2__ V_pf_status ;
 int V_pfsync_carp_adj ;
 int V_pfsyncif ;
 int callout_reset (int *,int,void (*) (void*),int ) ;
 int carp_demote_adj_p (int ,char*) ;
 int hz ;
 int pfsync_request_update (int ,int ) ;
 int printf (char*) ;
 int stub1 (int ,char*) ;

__attribute__((used)) static void
pfsync_bulk_fail(void *arg)
{
 struct pfsync_softc *sc = arg;
 struct pfsync_bucket *b = &sc->sc_buckets[0];

 CURVNET_SET(sc->sc_ifp->if_vnet);

 PFSYNC_BLOCK_ASSERT(sc);

 if (sc->sc_bulk_tries++ < PFSYNC_MAX_BULKTRIES) {

  callout_reset(&sc->sc_bulkfail_tmo, 5 * hz,
      pfsync_bulk_fail, V_pfsyncif);
  PFSYNC_BUCKET_LOCK(b);
  pfsync_request_update(0, 0);
  PFSYNC_BUCKET_UNLOCK(b);
 } else {

  sc->sc_ureq_sent = 0;
  sc->sc_bulk_tries = 0;
  PFSYNC_LOCK(sc);
  if (!(sc->sc_flags & PFSYNCF_OK) && carp_demote_adj_p)
   (*carp_demote_adj_p)(-V_pfsync_carp_adj,
       "pfsync bulk fail");
  sc->sc_flags |= PFSYNCF_OK;
  PFSYNC_UNLOCK(sc);
  if (V_pf_status.debug >= PF_DEBUG_MISC)
   printf("pfsync: failed to receive bulk update\n");
 }

 CURVNET_RESTORE();
}
