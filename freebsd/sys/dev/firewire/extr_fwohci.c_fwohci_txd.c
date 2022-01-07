
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int uint32_t ;
typedef int u_int ;
struct fwohcidb_tr {struct fw_xfer* xfer; int dma_map; } ;
struct TYPE_6__ {int res; } ;
struct TYPE_7__ {TYPE_1__ desc; } ;
struct fwohcidb {TYPE_2__ db; } ;
struct TYPE_8__ {int dev; } ;
struct TYPE_10__ {scalar_t__ queued; } ;
struct fwohci_dbch {int flags; TYPE_5__ xferq; struct fwohcidb_tr* top; struct fwohcidb_tr* bottom; int dmat; int am; } ;
struct fwohci_softc {TYPE_3__ fc; struct fwohci_dbch atrs; struct fwohci_dbch atrq; } ;
struct TYPE_9__ {scalar_t__ pay_len; } ;
struct fw_xfer {int flag; int resp; TYPE_4__ recv; int tv; } ;
struct firewire_comm {scalar_t__ status; } ;


 int ATRQ_CH ;
 int ATRS_CH ;
 int BUS_DMASYNC_POSTREAD ;
 int BUS_DMASYNC_POSTWRITE ;
 int EAGAIN ;
 int EBUSY ;
 int EINVAL ;
 scalar_t__ FWBUSINIT ;
 int FWOHCIEV_MASK ;






 int FWOHCI_DBCH_FULL ;
 int FWOHCI_DMA_READ (int ) ;
 int FWXF_BUSY ;
 int FWXF_RCVD ;
 int FWXF_SENT ;
 int FWXF_SENTERR ;
 int FW_GLOCK (struct firewire_comm*) ;
 int FW_GUNLOCK (struct firewire_comm*) ;
 int LAST_DB (struct fwohcidb_tr*,struct fwohcidb*) ;
 int OHCI_ATQOFF ;
 int OHCI_ATSOFF ;
 int OHCI_CNTL_DMA_ACTIVE ;
 int OHCI_CNTL_DMA_DEAD ;
 int OHCI_CNTL_DMA_RUN ;
 int OHCI_DMACTLCLR (int ) ;
 int OHCI_HCCCTL ;
 int OHCI_HCCCTLCLR ;
 int OHCI_HCC_LINKEN ;
 int OHCI_HCC_LPS ;
 int OHCI_STATUS_SHIFT ;
 int OWRITE (struct fwohci_softc*,int ,int) ;
 struct fwohcidb_tr* STAILQ_NEXT (struct fwohcidb_tr*,int ) ;
 int bus_dmamap_sync (int ,int ,int ) ;
 int bus_dmamap_unload (int ,int ) ;
 int device_printf (int ,char*) ;
 int dump_db (struct fwohci_softc*,int) ;
 int firewire_debug ;
 int fw_xfer_done (struct fw_xfer*) ;
 int fwdma_sync_multiseg_all (int ,int ) ;
 int fwohci_start (struct fwohci_softc*,struct fwohci_dbch*) ;
 int link ;
 int microtime (int *) ;
 int printf (char*) ;
 int splfw () ;
 int splx (int) ;

void
fwohci_txd(struct fwohci_softc *sc, struct fwohci_dbch *dbch)
{
 int s, ch, err = 0;
 struct fwohcidb_tr *tr;
 struct fwohcidb *db;
 struct fw_xfer *xfer;
 uint32_t off;
 u_int stat, status;
 int packets;
 struct firewire_comm *fc = (struct firewire_comm *)sc;

 if (&sc->atrq == dbch) {
  off = OHCI_ATQOFF;
  ch = ATRQ_CH;
 } else if (&sc->atrs == dbch) {
  off = OHCI_ATSOFF;
  ch = ATRS_CH;
 } else {
  return;
 }
 s = splfw();
 tr = dbch->bottom;
 packets = 0;
 fwdma_sync_multiseg_all(dbch->am, BUS_DMASYNC_POSTREAD);
 fwdma_sync_multiseg_all(dbch->am, BUS_DMASYNC_POSTWRITE);
 while (dbch->xferq.queued > 0) {
  LAST_DB(tr, db);
  status = FWOHCI_DMA_READ(db->db.desc.res) >> OHCI_STATUS_SHIFT;
  if (!(status & OHCI_CNTL_DMA_ACTIVE)) {
   if (fc->status != FWBUSINIT)

    goto out;
  }
  bus_dmamap_sync(dbch->dmat, tr->dma_map,
   BUS_DMASYNC_POSTWRITE);
  bus_dmamap_unload(dbch->dmat, tr->dma_map);

  if (firewire_debug > 1)
   dump_db(sc, ch);

  if (status & OHCI_CNTL_DMA_DEAD) {

   OWRITE(sc, OHCI_DMACTLCLR(off), OHCI_CNTL_DMA_RUN);
   device_printf(sc->fc.dev, "force reset AT FIFO\n");
   OWRITE(sc, OHCI_HCCCTLCLR, OHCI_HCC_LINKEN);
   OWRITE(sc, OHCI_HCCCTL, OHCI_HCC_LPS | OHCI_HCC_LINKEN);
   OWRITE(sc, OHCI_DMACTLCLR(off), OHCI_CNTL_DMA_RUN);
  }
  stat = status & FWOHCIEV_MASK;
  switch (stat) {
  case 139:
  case 141:
   err = 0;
   break;
  case 144:
  case 143:
  case 142:
   err = EBUSY;
   break;
  case 134:
  case 138:
   err = EAGAIN;
   break;
  case 133:
  case 129:
  case 132:
  case 136:
  case 135:
  case 130:
  case 131:
  case 128:
  case 140:
  case 137:
  default:
   err = EINVAL;
   break;
  }
  if (tr->xfer != ((void*)0)) {
   xfer = tr->xfer;
   if (xfer->flag & FWXF_RCVD) {




    fw_xfer_done(xfer);
   } else {
    microtime(&xfer->tv);
    xfer->flag = FWXF_SENT;
    if (err == EBUSY) {
     xfer->flag = FWXF_BUSY;
     xfer->resp = err;
     xfer->recv.pay_len = 0;
     fw_xfer_done(xfer);
    } else if (stat != 139) {
     if (stat != 141)
      xfer->flag = FWXF_SENTERR;
     xfer->resp = err;
     xfer->recv.pay_len = 0;
     fw_xfer_done(xfer);
    }
   }




  } else {
   printf("this shouldn't happen\n");
  }
  FW_GLOCK(fc);
  dbch->xferq.queued--;
  FW_GUNLOCK(fc);
  tr->xfer = ((void*)0);

  packets++;
  tr = STAILQ_NEXT(tr, link);
  dbch->bottom = tr;
  if (dbch->bottom == dbch->top) {

   if (firewire_debug && dbch->xferq.queued > 0)
    printf("queued > 0\n");
   break;
  }
 }
out:
 if ((dbch->flags & FWOHCI_DBCH_FULL) && packets > 0) {
  printf("make free slot\n");
  dbch->flags &= ~FWOHCI_DBCH_FULL;
  FW_GLOCK(fc);
  fwohci_start(sc, dbch);
  FW_GUNLOCK(fc);
 }
 splx(s);
}
