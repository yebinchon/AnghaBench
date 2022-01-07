
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint32_t ;
struct fwohcidb_tr {int dma_map; TYPE_3__* db; } ;
struct firewire_comm {int dev; struct fw_xferq** ir; } ;
struct fwohci_softc {TYPE_4__* ir; struct firewire_comm fc; } ;
struct fw_xferq {int flag; int (* hand ) (struct fw_xferq*) ;int stvalid; int stdma; int bnpacket; int * buf; } ;
struct fw_bulkxfer {int resp; int poffset; int * mbuf; scalar_t__ end; } ;
struct TYPE_8__ {int ndesc; int dmat; int am; } ;
struct TYPE_5__ {int res; } ;
struct TYPE_6__ {TYPE_1__ desc; } ;
struct TYPE_7__ {TYPE_2__ db; } ;


 int BUS_DMASYNC_POSTREAD ;
 int EINVAL ;

 int FWOHCIEV_MASK ;
 int FWOHCI_DMA_READ (int ) ;
 int FWXFERQ_HANDLER ;
 int FW_GLOCK (struct firewire_comm*) ;
 int FW_GUNLOCK (struct firewire_comm*) ;
 int OHCI_STATUS_SHIFT ;
 struct fw_bulkxfer* STAILQ_FIRST (int *) ;
 int STAILQ_INSERT_TAIL (int *,struct fw_bulkxfer*,int ) ;
 int STAILQ_REMOVE_HEAD (int *,int ) ;
 int bus_dmamap_sync (int ,int ,int ) ;
 int bus_dmamap_unload (int ,int ) ;
 int device_printf (int ,char*,int,int ) ;
 int dump_db (struct fwohci_softc*,int) ;
 int fwdma_sync_multiseg (int *,int ,int ,int ) ;
 int fwdma_sync_multiseg_all (int ,int ) ;
 int * fwohcicode ;
 int link ;
 int printf (char*) ;
 int stub1 (struct fw_xferq*) ;
 int wakeup (struct fw_xferq*) ;

__attribute__((used)) static void
fwohci_rbuf_update(struct fwohci_softc *sc, int dmach)
{
 struct firewire_comm *fc = &sc->fc;
 struct fwohcidb_tr *db_tr;
 struct fw_bulkxfer *chunk;
 struct fw_xferq *ir;
 uint32_t stat;
 int w = 0, ldesc;

 ir = fc->ir[dmach];
 ldesc = sc->ir[dmach].ndesc - 1;




 if ((ir->flag & FWXFERQ_HANDLER) == 0)
  FW_GLOCK(fc);
 fwdma_sync_multiseg_all(sc->ir[dmach].am, BUS_DMASYNC_POSTREAD);
 while ((chunk = STAILQ_FIRST(&ir->stdma)) != ((void*)0)) {
  db_tr = (struct fwohcidb_tr *)chunk->end;
  stat = FWOHCI_DMA_READ(db_tr->db[ldesc].db.desc.res)
    >> OHCI_STATUS_SHIFT;
  if (stat == 0)
   break;

  if (chunk->mbuf != ((void*)0)) {
   bus_dmamap_sync(sc->ir[dmach].dmat, db_tr->dma_map,
      BUS_DMASYNC_POSTREAD);
   bus_dmamap_unload(sc->ir[dmach].dmat, db_tr->dma_map);
  } else if (ir->buf != ((void*)0)) {
   fwdma_sync_multiseg(ir->buf, chunk->poffset,
    ir->bnpacket, BUS_DMASYNC_POSTREAD);
  } else {

   printf("fwohci_rbuf_update: this shouldn't happened\n");
  }

  STAILQ_REMOVE_HEAD(&ir->stdma, link);
  STAILQ_INSERT_TAIL(&ir->stvalid, chunk, link);
  switch (stat & FWOHCIEV_MASK) {
  case 128:
   chunk->resp = 0;
   break;
  default:
   chunk->resp = EINVAL;
   device_printf(fc->dev,
    "Isochronous receive err %02x(%s)\n",
     stat, fwohcicode[stat & 0x1f]);
  }
  w++;
 }
 if ((ir->flag & FWXFERQ_HANDLER) == 0)
  FW_GUNLOCK(fc);
 if (w == 0)
  return;

 if (ir->flag & FWXFERQ_HANDLER)
  ir->hand(ir);
 else
  wakeup(ir);
}
