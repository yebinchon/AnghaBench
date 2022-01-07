
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_7__ ;
typedef struct TYPE_13__ TYPE_6__ ;
typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int uint32_t ;
struct fwohcidb_tr {int * xfer; } ;
struct TYPE_13__ {int nisodma; int maxrec; int speed; int* config_rom; } ;
struct TYPE_12__ {int ndb; struct fwohcidb_tr* top; struct fwohcidb_tr* bottom; int db_trq; } ;
struct TYPE_11__ {int ndb; struct fwohcidb_tr* top; struct fwohcidb_tr* bottom; int db_trq; } ;
struct TYPE_10__ {int flag; } ;
struct TYPE_14__ {TYPE_3__ xferq; } ;
struct TYPE_9__ {int bus_addr; } ;
struct TYPE_8__ {int bus_addr; } ;
struct fwohci_softc {int intmask; TYPE_6__ fc; TYPE_5__ atrs; TYPE_4__ atrq; TYPE_7__ arrs; TYPE_7__ arrq; TYPE_2__ sid_dma; TYPE_1__ crom_dma; } ;
typedef int device_t ;


 int DELAY (int) ;
 int FWOHCI_INTMASK ;
 int FWOHCI_INTMASKCLR ;
 int FWOHCI_RETRY ;
 int FWXFERQ_RUNNING ;
 int MAXREC (int) ;
 int OHCI_ARQCTLCLR ;
 int OHCI_ARSCTLCLR ;
 int OHCI_ATQCTLCLR ;
 int OHCI_ATSCTLCLR ;
 int OHCI_BUSFNC ;
 int OHCI_BUS_OPT ;
 int OHCI_CNTL_DMA_DEAD ;
 int OHCI_CNTL_DMA_RUN ;
 int OHCI_CNTL_SID ;
 int OHCI_CROMHDR ;
 int OHCI_CROMPTR ;
 int OHCI_HCCCTL ;
 int OHCI_HCCCTLCLR ;
 int OHCI_HCC_BIGEND ;
 int OHCI_HCC_LINKEN ;
 int OHCI_HCC_POSTWR ;
 int OHCI_HCC_RESET ;
 int OHCI_INT_CYC_LOST ;
 int OHCI_INT_DMA_ATRQ ;
 int OHCI_INT_DMA_ATRS ;
 int OHCI_INT_DMA_IR ;
 int OHCI_INT_DMA_IT ;
 int OHCI_INT_DMA_PRRQ ;
 int OHCI_INT_DMA_PRRS ;
 int OHCI_INT_ERR ;
 int OHCI_INT_PHY_BUS_R ;
 int OHCI_INT_PHY_INT ;
 int OHCI_INT_PHY_SID ;
 int OHCI_INT_PW_ERR ;
 int OHCI_IRCTLCLR (int) ;
 int OHCI_IR_MASKCLR ;
 int OHCI_ITCTLCLR (int) ;
 int OHCI_LNKCTL ;
 int OHCI_SID_BUF ;
 int OREAD (struct fwohci_softc*,int ) ;
 int OWRITE (struct fwohci_softc*,int ,int) ;
 void* STAILQ_FIRST (int *) ;
 struct fwohcidb_tr* STAILQ_NEXT (struct fwohcidb_tr*,int ) ;
 int device_printf (int ,char*,...) ;
 scalar_t__ firewire_debug ;
 int fwohci_probe_phy (struct fwohci_softc*,int ) ;
 int fwohci_rx_enable (struct fwohci_softc*,TYPE_7__*) ;
 int fwohci_set_intr (TYPE_6__*,int) ;
 int link ;
 int* linkspeed ;
 int printf (char*,int) ;

void
fwohci_reset(struct fwohci_softc *sc, device_t dev)
{
 int i, max_rec, speed;
 uint32_t reg, reg2;
 struct fwohcidb_tr *db_tr;


 OWRITE(sc, FWOHCI_INTMASKCLR, ~0);


 OWRITE(sc, OHCI_ARQCTLCLR, OHCI_CNTL_DMA_RUN);
 OWRITE(sc, OHCI_ARSCTLCLR, OHCI_CNTL_DMA_RUN);
 OWRITE(sc, OHCI_ATQCTLCLR, OHCI_CNTL_DMA_RUN);
 OWRITE(sc, OHCI_ATSCTLCLR, OHCI_CNTL_DMA_RUN);

 OWRITE(sc, OHCI_IR_MASKCLR, ~0);
 for (i = 0; i < sc->fc.nisodma; i++) {
  OWRITE(sc, OHCI_IRCTLCLR(i), OHCI_CNTL_DMA_RUN);
  OWRITE(sc, OHCI_ITCTLCLR(i), OHCI_CNTL_DMA_RUN);
 }


 OWRITE(sc, OHCI_HCCCTL, OHCI_HCC_RESET);
 if (firewire_debug)
  device_printf(dev, "resetting OHCI...");
 i = 0;
 while (OREAD(sc, OHCI_HCCCTL) & OHCI_HCC_RESET) {
  if (i++ > 100) break;
  DELAY(1000);
 }
 if (firewire_debug)
  printf("done (loop=%d)\n", i);


 fwohci_probe_phy(sc, dev);


 reg = OREAD(sc, OHCI_BUS_OPT);
 reg2 = reg | OHCI_BUSFNC;
 max_rec = (reg & 0x0000f000) >> 12;
 speed = (reg & 0x00000007);
 device_printf(dev, "Link %s, max_rec %d bytes.\n",
   linkspeed[speed], MAXREC(max_rec));

 sc->fc.maxrec = sc->fc.speed + 8;
 if (max_rec != sc->fc.maxrec) {
  reg2 = (reg2 & 0xffff0fff) | (sc->fc.maxrec << 12);
  device_printf(dev, "max_rec %d -> %d\n",
    MAXREC(max_rec), MAXREC(sc->fc.maxrec));
 }
 if (firewire_debug)
  device_printf(dev, "BUS_OPT 0x%x -> 0x%x\n", reg, reg2);
 OWRITE(sc, OHCI_BUS_OPT, reg2);


 OWRITE(sc, OHCI_CROMHDR, sc->fc.config_rom[0]);
 OWRITE(sc, OHCI_CROMPTR, sc->crom_dma.bus_addr);
 OWRITE(sc, OHCI_HCCCTLCLR, OHCI_HCC_BIGEND);
 OWRITE(sc, OHCI_HCCCTL, OHCI_HCC_POSTWR);
 OWRITE(sc, OHCI_SID_BUF, sc->sid_dma.bus_addr);
 OWRITE(sc, OHCI_LNKCTL, OHCI_CNTL_SID);


 OWRITE(sc, OHCI_HCCCTL, OHCI_HCC_LINKEN);


 sc->arrq.xferq.flag &= ~FWXFERQ_RUNNING;
 sc->arrs.xferq.flag &= ~FWXFERQ_RUNNING;
 fwohci_rx_enable(sc, &sc->arrq);
 fwohci_rx_enable(sc, &sc->arrs);


 OWRITE(sc, OHCI_ATQCTLCLR, OHCI_CNTL_DMA_RUN | OHCI_CNTL_DMA_DEAD);
 OWRITE(sc, OHCI_ATSCTLCLR, OHCI_CNTL_DMA_RUN | OHCI_CNTL_DMA_DEAD);


 OWRITE(sc, FWOHCI_RETRY,

  (0xffff << 16) | (0x0f << 8) | (0x0f << 4) | 0x0f);

 sc->atrq.top = STAILQ_FIRST(&sc->atrq.db_trq);
 sc->atrs.top = STAILQ_FIRST(&sc->atrs.db_trq);
 sc->atrq.bottom = sc->atrq.top;
 sc->atrs.bottom = sc->atrs.top;

 for (i = 0, db_tr = sc->atrq.top; i < sc->atrq.ndb;
     i++, db_tr = STAILQ_NEXT(db_tr, link)) {
  db_tr->xfer = ((void*)0);
 }
 for (i = 0, db_tr = sc->atrs.top; i < sc->atrs.ndb;
     i++, db_tr = STAILQ_NEXT(db_tr, link)) {
  db_tr->xfer = ((void*)0);
 }


 sc->intmask = (OHCI_INT_ERR | OHCI_INT_PHY_SID
   | OHCI_INT_DMA_ATRQ | OHCI_INT_DMA_ATRS
   | OHCI_INT_DMA_PRRQ | OHCI_INT_DMA_PRRS
   | OHCI_INT_PHY_BUS_R | OHCI_INT_PW_ERR);
 sc->intmask |= OHCI_INT_DMA_IR | OHCI_INT_DMA_IT;
 sc->intmask |= OHCI_INT_CYC_LOST | OHCI_INT_PHY_INT;
 OWRITE(sc, FWOHCI_INTMASK, sc->intmask);
 fwohci_set_intr(&sc->fc, 1);
}
