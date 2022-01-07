
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint32_t ;
struct fwohcidb_tr {struct fwohcidb* db; } ;
struct TYPE_5__ {int depend; int res; } ;
struct TYPE_6__ {TYPE_2__ desc; } ;
struct fwohcidb {TYPE_3__ db; } ;
struct fwohci_softc {int dummy; } ;
struct TYPE_4__ {int psize; } ;
struct fwohci_dbch {struct fwohcidb_tr* bottom; int am; TYPE_1__ xferq; } ;


 int BUS_DMASYNC_PREWRITE ;
 int FWOHCI_DMA_CLEAR (int ,int) ;
 int FWOHCI_DMA_SET (int ,int) ;
 int FWOHCI_DMA_WRITE (int ,int ) ;
 int OHCI_CNTL_DMA_WAKE ;
 int OHCI_DMACTL (int ) ;
 int OWRITE (struct fwohci_softc*,int ,int ) ;
 int fwdma_sync_multiseg_all (int ,int ) ;

__attribute__((used)) static void
fwohci_arcv_free_buf(struct fwohci_softc *sc, struct fwohci_dbch *dbch,
    struct fwohcidb_tr *db_tr, uint32_t off, int wake)
{
 struct fwohcidb *db = &db_tr->db[0];

 FWOHCI_DMA_CLEAR(db->db.desc.depend, 0xf);
 FWOHCI_DMA_WRITE(db->db.desc.res, dbch->xferq.psize);
 FWOHCI_DMA_SET(dbch->bottom->db[0].db.desc.depend, 1);
 fwdma_sync_multiseg_all(dbch->am, BUS_DMASYNC_PREWRITE);
 dbch->bottom = db_tr;

 if (wake)
  OWRITE(sc, OHCI_DMACTL(off), OHCI_CNTL_DMA_WAKE);
}
