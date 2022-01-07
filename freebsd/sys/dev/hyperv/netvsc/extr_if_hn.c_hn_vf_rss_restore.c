
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct hn_softc {int hn_flags; int hn_rx_ring_inuse; scalar_t__ hn_rss_hash; scalar_t__ hn_rss_hcap; TYPE_1__* hn_ifp; } ;
struct TYPE_2__ {int if_xname; } ;


 int HN_FLAG_SYNTH_ATTACHED ;
 int HN_LOCK_ASSERT (struct hn_softc*) ;
 int KASSERT (int,char*) ;
 int NDIS_HASH_ALL ;
 int hn_rss_mbuf_hash (struct hn_softc*,int ) ;
 int hn_rss_reconfig (struct hn_softc*) ;
 int if_printf (TYPE_1__*,char*,int) ;

__attribute__((used)) static void
hn_vf_rss_restore(struct hn_softc *sc)
{

 HN_LOCK_ASSERT(sc);
 KASSERT(sc->hn_flags & HN_FLAG_SYNTH_ATTACHED,
     ("%s: synthetic parts are not attached", sc->hn_ifp->if_xname));

 if (sc->hn_rx_ring_inuse == 1)
  goto done;




 if (sc->hn_rss_hash != sc->hn_rss_hcap) {
  int error;

  sc->hn_rss_hash = sc->hn_rss_hcap;
  error = hn_rss_reconfig(sc);
  if (error) {
   if_printf(sc->hn_ifp, "hn_rss_reconfig failed: %d\n",
       error);

  }
 }
done:

 hn_rss_mbuf_hash(sc, NDIS_HASH_ALL);
}
