
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct host_packet {int addr; } ;
struct ata_promise_sx4 {int mtx; scalar_t__ busy; int queue; } ;
struct ata_pci_controller {int r_res2; struct ata_promise_sx4* chipset_data; } ;


 int ATA_OUTL (int ,int,int ) ;
 int M_TEMP ;
 struct host_packet* TAILQ_FIRST (int *) ;
 int TAILQ_REMOVE (int *,struct host_packet*,int ) ;
 int chain ;
 int free (struct host_packet*,int ) ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;

__attribute__((used)) static void
ata_promise_next_hpkt(struct ata_pci_controller *ctlr)
{
    struct ata_promise_sx4 *hpktp = ctlr->chipset_data;
    struct host_packet *hp;

    mtx_lock(&hpktp->mtx);
    if ((hp = TAILQ_FIRST(&hpktp->queue))) {
 TAILQ_REMOVE(&hpktp->queue, hp, chain);
 ATA_OUTL(ctlr->r_res2, 0x000c0100, hp->addr);
 free(hp, M_TEMP);
    }
    else
 hpktp->busy = 0;
    mtx_unlock(&hpktp->mtx);
}
