
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ndis_rssprm_toeplitz {int* rss_ind; } ;
struct hn_softc {int hn_rx_ring_inuse; int hn_ifp; struct ndis_rssprm_toeplitz hn_rss; } ;


 int KASSERT (int,char*) ;
 int NDIS_HASH_INDCNT ;
 int if_printf (int ,char*,int,int,int) ;

__attribute__((used)) static void
hn_rss_ind_fixup(struct hn_softc *sc)
{
 struct ndis_rssprm_toeplitz *rss = &sc->hn_rss;
 int i, nchan;

 nchan = sc->hn_rx_ring_inuse;
 KASSERT(nchan > 1, ("invalid # of channels %d", nchan));





 for (i = 0; i < NDIS_HASH_INDCNT; ++i) {
  if (rss->rss_ind[i] >= nchan) {
   if_printf(sc->hn_ifp,
       "RSS indirect table %d fixup: %u -> %d\n",
       i, rss->rss_ind[i], nchan - 1);
   rss->rss_ind[i] = nchan - 1;
  }
 }
}
