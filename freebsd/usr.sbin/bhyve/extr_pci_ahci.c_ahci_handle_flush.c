
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct blockif_req {int dummy; } ;
struct ahci_port {int pending; int bctx; int iobhd; int iofhd; } ;
struct ahci_ioreq {int slot; struct blockif_req io_req; scalar_t__ more; scalar_t__ done; scalar_t__ len; int * cfis; } ;


 struct ahci_ioreq* STAILQ_FIRST (int *) ;
 int STAILQ_REMOVE_HEAD (int *,int ) ;
 int TAILQ_INSERT_HEAD (int *,struct ahci_ioreq*,int ) ;
 int assert (int) ;
 int blockif_flush (int ,struct blockif_req*) ;
 int io_blist ;
 int io_flist ;

__attribute__((used)) static void
ahci_handle_flush(struct ahci_port *p, int slot, uint8_t *cfis)
{
 struct ahci_ioreq *aior;
 struct blockif_req *breq;
 int err;




 aior = STAILQ_FIRST(&p->iofhd);
 assert(aior != ((void*)0));
 STAILQ_REMOVE_HEAD(&p->iofhd, io_flist);
 aior->cfis = cfis;
 aior->slot = slot;
 aior->len = 0;
 aior->done = 0;
 aior->more = 0;
 breq = &aior->io_req;




 p->pending |= 1 << slot;




 TAILQ_INSERT_HEAD(&p->iobhd, aior, io_blist);

 err = blockif_flush(p->bctx, breq);
 assert(err == 0);
}
