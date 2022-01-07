
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint32_t ;
struct fwohcidb_tr {struct fwohcidb* db; } ;
struct TYPE_5__ {int res; } ;
struct TYPE_6__ {TYPE_2__ desc; } ;
struct fwohcidb {TYPE_3__ db; } ;
struct firewire_comm {int dev; struct fw_xferq** it; } ;
struct fwohci_softc {TYPE_1__* it; struct firewire_comm fc; } ;
struct fw_xferq {int stfree; int stdma; } ;
struct fw_bulkxfer {scalar_t__ start; scalar_t__ end; } ;
struct TYPE_4__ {int ndesc; int am; } ;


 int BUS_DMASYNC_POSTREAD ;

 int FWOHCIEV_MASK ;
 int FWOHCI_DMA_READ (int ) ;
 int FW_GLOCK (struct firewire_comm*) ;
 int FW_GUNLOCK (struct firewire_comm*) ;
 scalar_t__ ITX_CH ;
 int OHCI_COUNT_MASK ;
 int OHCI_STATUS_SHIFT ;
 struct fw_bulkxfer* STAILQ_FIRST (int *) ;
 int STAILQ_INSERT_TAIL (int *,struct fw_bulkxfer*,int ) ;
 int STAILQ_REMOVE_HEAD (int *,int ) ;
 int device_printf (int ,char*,int,...) ;
 int dump_db (struct fwohci_softc*,scalar_t__) ;
 scalar_t__ firewire_debug ;
 int fwdma_sync_multiseg_all (int ,int ) ;
 int * fwohcicode ;
 int link ;
 int splfw () ;
 int splx (int) ;
 int wakeup (struct fw_xferq*) ;

__attribute__((used)) static void
fwohci_tbuf_update(struct fwohci_softc *sc, int dmach)
{
 struct firewire_comm *fc = &sc->fc;
 struct fwohcidb *db;
 struct fw_bulkxfer *chunk;
 struct fw_xferq *it;
 uint32_t stat, count;
 int s, w=0, ldesc;

 it = fc->it[dmach];
 ldesc = sc->it[dmach].ndesc - 1;
 s = splfw();
 FW_GLOCK(fc);
 fwdma_sync_multiseg_all(sc->it[dmach].am, BUS_DMASYNC_POSTREAD);
 if (firewire_debug)
  dump_db(sc, ITX_CH + dmach);
 while ((chunk = STAILQ_FIRST(&it->stdma)) != ((void*)0)) {
  db = ((struct fwohcidb_tr *)(chunk->end))->db;
  stat = FWOHCI_DMA_READ(db[ldesc].db.desc.res)
    >> OHCI_STATUS_SHIFT;
  db = ((struct fwohcidb_tr *)(chunk->start))->db;

  count = FWOHCI_DMA_READ(db[ldesc].db.desc.res)
    & OHCI_COUNT_MASK;
  if (stat == 0)
   break;
  STAILQ_REMOVE_HEAD(&it->stdma, link);
  switch (stat & FWOHCIEV_MASK) {
  case 128:



   break;
  default:
   device_printf(fc->dev,
    "Isochronous transmit err %02x(%s)\n",
     stat, fwohcicode[stat & 0x1f]);
  }
  STAILQ_INSERT_TAIL(&it->stfree, chunk, link);
  w++;
 }
 FW_GUNLOCK(fc);
 splx(s);
 if (w)
  wakeup(it);
}
