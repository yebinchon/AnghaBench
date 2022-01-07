
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
typedef int u_int ;
struct TYPE_4__ {int dev; } ;
struct fwohci_softc {int cycle_lost; int atrs; int atrq; int arrq; int arrs; int itstat; TYPE_2__ fc; struct fwohci_dbch* ir; int irstat; } ;
struct TYPE_3__ {int flag; } ;
struct fwohci_dbch {TYPE_1__ xferq; } ;
struct firewire_comm {int nisodma; int dev; } ;


 int ARRQ_CH ;
 int ARRS_CH ;
 int FWOHCI_INTMASKCLR ;
 int FWXFERQ_OPEN ;
 int OHCI_CNTL_CYCTIMER ;
 int OHCI_INT_CYC_LOST ;
 int OHCI_INT_DMA_ATRQ ;
 int OHCI_INT_DMA_ATRS ;
 int OHCI_INT_DMA_IR ;
 int OHCI_INT_DMA_IT ;
 int OHCI_INT_DMA_PRRQ ;
 int OHCI_INT_DMA_PRRS ;
 int OHCI_INT_ERR ;
 int OHCI_INT_PHY_INT ;
 int OHCI_INT_PW_ERR ;
 int OHCI_LNKCTLCLR ;
 int OWRITE (struct fwohci_softc*,int ,int) ;
 int atomic_readandclear_int (int *) ;
 int device_printf (int ,char*,...) ;
 int dump_db (struct fwohci_softc*,int ) ;
 int dump_dma (struct fwohci_softc*,int ) ;
 int fwohci_arcv (struct fwohci_softc*,int *,int) ;
 int fwohci_rbuf_update (struct fwohci_softc*,int) ;
 int fwohci_tbuf_update (struct fwohci_softc*,int) ;
 int fwohci_txd (struct fwohci_softc*,int *) ;

__attribute__((used)) static void
fwohci_intr_dma(struct fwohci_softc *sc, uint32_t stat, int count)
{
 uint32_t irstat, itstat;
 u_int i;
 struct firewire_comm *fc = (struct firewire_comm *)sc;

 if (stat & OHCI_INT_DMA_IR) {
  irstat = atomic_readandclear_int(&sc->irstat);
  for (i = 0; i < fc->nisodma; i++) {
   struct fwohci_dbch *dbch;

   if ((irstat & (1 << i)) != 0) {
    dbch = &sc->ir[i];
    if ((dbch->xferq.flag & FWXFERQ_OPEN) == 0) {
     device_printf(sc->fc.dev,
      "dma(%d) not active\n", i);
     continue;
    }
    fwohci_rbuf_update(sc, i);
   }
  }
 }
 if (stat & OHCI_INT_DMA_IT) {
  itstat = atomic_readandclear_int(&sc->itstat);
  for (i = 0; i < fc->nisodma; i++) {
   if ((itstat & (1 << i)) != 0) {
    fwohci_tbuf_update(sc, i);
   }
  }
 }
 if (stat & OHCI_INT_DMA_PRRS) {




  fwohci_arcv(sc, &sc->arrs, count);
 }
 if (stat & OHCI_INT_DMA_PRRQ) {




  fwohci_arcv(sc, &sc->arrq, count);
 }
 if (stat & OHCI_INT_CYC_LOST) {
  if (sc->cycle_lost >= 0)
   sc->cycle_lost++;
  if (sc->cycle_lost > 10) {
   sc->cycle_lost = -1;



   OWRITE(sc, FWOHCI_INTMASKCLR, OHCI_INT_CYC_LOST);
   device_printf(fc->dev, "too many cycles lost, "
    "no cycle master present?\n");
  }
 }
 if (stat & OHCI_INT_DMA_ATRQ) {
  fwohci_txd(sc, &(sc->atrq));
 }
 if (stat & OHCI_INT_DMA_ATRS) {
  fwohci_txd(sc, &(sc->atrs));
 }
 if (stat & OHCI_INT_PW_ERR) {
  device_printf(fc->dev, "posted write error\n");
 }
 if (stat & OHCI_INT_ERR) {
  device_printf(fc->dev, "unrecoverable error\n");
 }
 if (stat & OHCI_INT_PHY_INT) {
  device_printf(fc->dev, "phy int\n");
 }
}
