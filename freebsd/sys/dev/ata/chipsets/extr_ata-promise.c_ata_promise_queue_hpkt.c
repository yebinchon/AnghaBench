
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int32_t ;
struct host_packet {int addr; } ;
struct ata_promise_sx4 {int busy; int mtx; int queue; } ;
struct ata_pci_controller {int r_res2; struct ata_promise_sx4* chipset_data; } ;


 int ATA_OUTL (int ,int,int ) ;
 int M_NOWAIT ;
 int M_TEMP ;
 int M_ZERO ;
 int TAILQ_INSERT_TAIL (int *,struct host_packet*,int ) ;
 int chain ;
 struct host_packet* malloc (int,int ,int) ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;

__attribute__((used)) static void
ata_promise_queue_hpkt(struct ata_pci_controller *ctlr, u_int32_t hpkt)
{
    struct ata_promise_sx4 *hpktp = ctlr->chipset_data;

    mtx_lock(&hpktp->mtx);
    if (hpktp->busy) {
 struct host_packet *hp =
     malloc(sizeof(struct host_packet), M_TEMP, M_NOWAIT | M_ZERO);
 hp->addr = hpkt;
 TAILQ_INSERT_TAIL(&hpktp->queue, hp, chain);
    }
    else {
 hpktp->busy = 1;
 ATA_OUTL(ctlr->r_res2, 0x000c0100, hpkt);
    }
    mtx_unlock(&hpktp->mtx);
}
