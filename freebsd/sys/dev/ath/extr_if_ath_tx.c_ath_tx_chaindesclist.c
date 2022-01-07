
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
struct ath_descdma {int dd_descsize; } ;
struct ath_softc {int sc_tx_nmaps; int sc_dmat; int sc_tx_desclen; struct ath_hal* sc_ah; struct ath_descdma sc_txdma; } ;
struct ath_hal {int dummy; } ;
struct ath_desc {int dummy; } ;
struct TYPE_4__ {int bfs_ndelim; int bfs_tx_queue; } ;
struct ath_buf {int bf_nseg; int bf_dmamap; struct ath_desc* bf_lastds; TYPE_2__ bf_state; int bf_descid; scalar_t__ bf_daddr; TYPE_1__* bf_segs; scalar_t__ bf_desc; } ;
typedef int segLenList ;
typedef int bufAddrList ;
struct TYPE_3__ {int ds_len; int ds_addr; } ;
typedef int HAL_DMA_ADDR ;


 int BUS_DMASYNC_PREWRITE ;
 int ath_hal_clr11n_aggr (struct ath_hal*,struct ath_desc*) ;
 int ath_hal_filltxdesc (struct ath_hal*,struct ath_desc*,int *,int *,int ,int ,int,int,struct ath_desc*) ;
 int ath_hal_set11n_aggr_last (struct ath_hal*,struct ath_desc*) ;
 int ath_hal_set11n_aggr_middle (struct ath_hal*,struct ath_desc*,int ) ;
 int ath_hal_settxdesclink (struct ath_hal*,struct ath_desc*,scalar_t__) ;
 scalar_t__ ath_tx_is_11n (struct ath_softc*) ;
 int bus_dmamap_sync (int ,int ,int ) ;
 int bzero (int *,int) ;

__attribute__((used)) static void
ath_tx_chaindesclist(struct ath_softc *sc, struct ath_desc *ds0,
    struct ath_buf *bf, int is_aggr, int is_first_subframe,
    int is_last_subframe)
{
 struct ath_hal *ah = sc->sc_ah;
 char *ds;
 int i, bp, dsp;
 HAL_DMA_ADDR bufAddrList[4];
 uint32_t segLenList[4];
 int numTxMaps = 1;
 int isFirstDesc = 1;





 struct ath_descdma *dd = &sc->sc_txdma;
 numTxMaps = sc->sc_tx_nmaps;





 ds = (char *) bf->bf_desc;
 bp = dsp = 0;
 bzero(bufAddrList, sizeof(bufAddrList));
 bzero(segLenList, sizeof(segLenList));
 for (i = 0; i < bf->bf_nseg; i++) {
  bufAddrList[bp] = bf->bf_segs[i].ds_addr;
  segLenList[bp] = bf->bf_segs[i].ds_len;
  bp++;





  if ((i != bf->bf_nseg - 1) && (bp < numTxMaps))
   continue;




  bp = 0;

  if (i == bf->bf_nseg - 1)
   ath_hal_settxdesclink(ah, (struct ath_desc *) ds, 0);
  else
   ath_hal_settxdesclink(ah, (struct ath_desc *) ds,
       bf->bf_daddr + dd->dd_descsize * (dsp + 1));







  ath_hal_filltxdesc(ah, (struct ath_desc *) ds
   , bufAddrList
   , segLenList
   , bf->bf_descid
   , bf->bf_state.bfs_tx_queue
   , isFirstDesc
   , i == bf->bf_nseg - 1
   , (struct ath_desc *) ds0
  );
  if (ath_tx_is_11n(sc))
   ath_hal_clr11n_aggr(sc->sc_ah, (struct ath_desc *) ds);





  if (is_last_subframe) {
   ath_hal_set11n_aggr_last(sc->sc_ah,
       (struct ath_desc *) ds);
  } else if (is_aggr) {
   ath_hal_set11n_aggr_middle(sc->sc_ah,
       (struct ath_desc *) ds,
       bf->bf_state.bfs_ndelim);
  }
  isFirstDesc = 0;
  bf->bf_lastds = (struct ath_desc *) ds;




  ds += sc->sc_tx_desclen;
  dsp++;




  bzero(bufAddrList, sizeof(bufAddrList));
  bzero(segLenList, sizeof(segLenList));
 }
 bus_dmamap_sync(sc->sc_dmat, bf->bf_dmamap, BUS_DMASYNC_PREWRITE);
}
