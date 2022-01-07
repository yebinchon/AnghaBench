
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct hn_tx_ring {int hn_agg_szmax; int hn_agg_pktmax; int hn_agg_align; int hn_tx_lock; } ;
struct hn_softc {scalar_t__ hn_agg_size; int hn_rndis_agg_size; int hn_chim_szmax; int hn_rndis_agg_align; scalar_t__ hn_agg_pkts; int hn_rndis_agg_pkts; int hn_tx_ring_cnt; struct hn_tx_ring* hn_tx_ring; int hn_ifp; } ;


 int HN_PKTSIZE_MIN (int) ;
 int INT_MAX ;
 int SHRT_MAX ;
 int UINT32_MAX ;
 scalar_t__ bootverbose ;
 int if_printf (int ,char*,int,int,int) ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;

__attribute__((used)) static void
hn_set_txagg(struct hn_softc *sc)
{
 uint32_t size, pkts;
 int i;




 if (sc->hn_agg_size < 0)
  size = UINT32_MAX;
 else
  size = sc->hn_agg_size;

 if (sc->hn_rndis_agg_size < size)
  size = sc->hn_rndis_agg_size;


 if (size > (uint32_t)sc->hn_chim_szmax)
  size = sc->hn_chim_szmax;

 if (size <= 2 * HN_PKTSIZE_MIN(sc->hn_rndis_agg_align)) {

  size = 0;
  pkts = 0;
  goto done;
 }


 if (size > INT_MAX)
  size = INT_MAX;




 if (sc->hn_agg_pkts < 0)
  pkts = UINT32_MAX;
 else
  pkts = sc->hn_agg_pkts;

 if (sc->hn_rndis_agg_pkts < pkts)
  pkts = sc->hn_rndis_agg_pkts;

 if (pkts <= 1) {

  size = 0;
  pkts = 0;
  goto done;
 }


 if (pkts > SHRT_MAX)
  pkts = SHRT_MAX;

done:

 if (sc->hn_rndis_agg_align > SHRT_MAX) {

  size = 0;
  pkts = 0;
 }

 if (bootverbose) {
  if_printf(sc->hn_ifp, "TX agg size %u, pkts %u, align %u\n",
      size, pkts, sc->hn_rndis_agg_align);
 }

 for (i = 0; i < sc->hn_tx_ring_cnt; ++i) {
  struct hn_tx_ring *txr = &sc->hn_tx_ring[i];

  mtx_lock(&txr->hn_tx_lock);
  txr->hn_agg_szmax = size;
  txr->hn_agg_pktmax = pkts;
  txr->hn_agg_align = sc->hn_rndis_agg_align;
  mtx_unlock(&txr->hn_tx_lock);
 }
}
