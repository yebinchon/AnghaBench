
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct fwohcidb_tr {int * dma_map; int * buf; } ;
struct TYPE_2__ {int flag; int psize; } ;
struct fwohci_dbch {int flags; int ndb; int db_trq; int am; int dmat; TYPE_1__ xferq; } ;


 int FWOHCI_DBCH_INIT ;
 int FWXFERQ_EXTBUF ;
 int M_FW ;
 struct fwohcidb_tr* STAILQ_FIRST (int *) ;
 int STAILQ_INIT (int *) ;
 struct fwohcidb_tr* STAILQ_NEXT (struct fwohcidb_tr*,int ) ;
 int bus_dmamap_destroy (int ,int *) ;
 int free (struct fwohcidb_tr*,int ) ;
 int fwdma_free_multiseg (int ) ;
 int fwdma_free_size (int ,int *,int *,int ) ;
 int link ;

__attribute__((used)) static void
fwohci_db_free(struct fwohci_dbch *dbch)
{
 struct fwohcidb_tr *db_tr;
 int idb;

 if ((dbch->flags & FWOHCI_DBCH_INIT) == 0)
  return;

 for (db_tr = STAILQ_FIRST(&dbch->db_trq), idb = 0; idb < dbch->ndb;
     db_tr = STAILQ_NEXT(db_tr, link), idb++) {
  if ((dbch->xferq.flag & FWXFERQ_EXTBUF) == 0 &&
      db_tr->buf != ((void*)0)) {
   fwdma_free_size(dbch->dmat, db_tr->dma_map,
     db_tr->buf, dbch->xferq.psize);
   db_tr->buf = ((void*)0);
  } else if (db_tr->dma_map != ((void*)0))
   bus_dmamap_destroy(dbch->dmat, db_tr->dma_map);
 }
 dbch->ndb = 0;
 db_tr = STAILQ_FIRST(&dbch->db_trq);
 fwdma_free_multiseg(dbch->am);
 free(db_tr, M_FW);
 STAILQ_INIT(&dbch->db_trq);
 dbch->flags &= ~FWOHCI_DBCH_INIT;
}
