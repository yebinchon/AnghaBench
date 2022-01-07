
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct rtwn_pci_softc {int pc_mapsize; int pc_sh; int pc_st; } ;
struct r92ce_tx_desc {int pktlen; int txbufsize; int txbufaddr; } ;
struct TYPE_3__ {int ds_addr; } ;
typedef TYPE_1__ bus_dma_segment_t ;


 int BUS_SPACE_BARRIER_WRITE ;
 int bus_space_barrier (int ,int ,int ,int ,int ) ;
 int htole32 (int ) ;

void
r92ce_tx_postsetup(struct rtwn_pci_softc *pc, void *desc,
    bus_dma_segment_t segs[])
{
 struct r92ce_tx_desc *txd = desc;

 txd->txbufaddr = htole32(segs[0].ds_addr);
 txd->txbufsize = txd->pktlen;
 bus_space_barrier(pc->pc_st, pc->pc_sh, 0, pc->pc_mapsize,
     BUS_SPACE_BARRIER_WRITE);
}
