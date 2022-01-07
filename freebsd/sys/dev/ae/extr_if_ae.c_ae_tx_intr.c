
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int uint16_t ;
struct ifnet {int if_drv_flags; } ;
struct TYPE_6__ {scalar_t__ flags; scalar_t__ len; } ;
typedef TYPE_1__ ae_txs_t ;
struct TYPE_7__ {scalar_t__ len; } ;
typedef TYPE_2__ ae_txd_t ;
struct TYPE_8__ {int txs_ack; int flags; int txd_ack; scalar_t__ tx_inproc; int dma_txs_map; int dma_txs_tag; int dma_txd_map; int dma_txd_tag; scalar_t__ wd_timer; int dev; scalar_t__ txd_base; int stats; TYPE_1__* txs_base; struct ifnet* ifp; } ;
typedef TYPE_3__ ae_softc_t ;


 int AE_FLAG_TXAVAIL ;
 int AE_LOCK_ASSERT (TYPE_3__*) ;
 int AE_TXD_BUFSIZE_DEFAULT ;
 int AE_TXS_COUNT_DEFAULT ;
 int AE_TXS_SUCCESS ;
 int AE_TXS_UPDATE ;
 int BUS_DMASYNC_POSTREAD ;
 int BUS_DMASYNC_POSTWRITE ;
 int BUS_DMASYNC_PREREAD ;
 int BUS_DMASYNC_PREWRITE ;
 int IFCOUNTER_OERRORS ;
 int IFCOUNTER_OPACKETS ;
 int IFF_DRV_OACTIVE ;
 int ae_update_stats_tx (int,int *) ;
 int bus_dmamap_sync (int ,int ,int) ;
 int device_printf (int ,char*,int,int) ;
 scalar_t__ htole16 (int) ;
 int if_inc_counter (struct ifnet*,int ,int) ;
 int if_printf (struct ifnet*,char*) ;
 int le16toh (scalar_t__) ;

__attribute__((used)) static void
ae_tx_intr(ae_softc_t *sc)
{
 struct ifnet *ifp;
 ae_txd_t *txd;
 ae_txs_t *txs;
 uint16_t flags;

 AE_LOCK_ASSERT(sc);

 ifp = sc->ifp;
 bus_dmamap_sync(sc->dma_txd_tag, sc->dma_txd_map,
     BUS_DMASYNC_POSTREAD | BUS_DMASYNC_POSTWRITE);
 bus_dmamap_sync(sc->dma_txs_tag, sc->dma_txs_map,
     BUS_DMASYNC_POSTREAD | BUS_DMASYNC_POSTWRITE);

 for (;;) {
  txs = sc->txs_base + sc->txs_ack;
  flags = le16toh(txs->flags);
  if ((flags & AE_TXS_UPDATE) == 0)
   break;
  txs->flags = htole16(flags & ~AE_TXS_UPDATE);

  ae_update_stats_tx(flags, &sc->stats);




  sc->txs_ack = (sc->txs_ack + 1) % AE_TXS_COUNT_DEFAULT;
  sc->flags |= AE_FLAG_TXAVAIL;

  txd = (ae_txd_t *)(sc->txd_base + sc->txd_ack);
  if (txs->len != txd->len)
   device_printf(sc->dev, "Size mismatch: TxS:%d TxD:%d\n",
       le16toh(txs->len), le16toh(txd->len));




  sc->txd_ack = ((sc->txd_ack + le16toh(txd->len) +
      sizeof(ae_txs_t) + 3) & ~3) % AE_TXD_BUFSIZE_DEFAULT;

  if ((flags & AE_TXS_SUCCESS) != 0)
   if_inc_counter(ifp, IFCOUNTER_OPACKETS, 1);
  else
   if_inc_counter(ifp, IFCOUNTER_OERRORS, 1);

  sc->tx_inproc--;
 }

 if ((sc->flags & AE_FLAG_TXAVAIL) != 0)
  ifp->if_drv_flags &= ~IFF_DRV_OACTIVE;
 if (sc->tx_inproc < 0) {
  if_printf(ifp, "Received stray Tx interrupt(s).\n");
  sc->tx_inproc = 0;
 }

 if (sc->tx_inproc == 0)
  sc->wd_timer = 0;




 bus_dmamap_sync(sc->dma_txd_tag, sc->dma_txd_map,
     BUS_DMASYNC_PREREAD | BUS_DMASYNC_PREWRITE);
 bus_dmamap_sync(sc->dma_txs_tag, sc->dma_txs_map,
     BUS_DMASYNC_PREREAD | BUS_DMASYNC_PREWRITE);
}
