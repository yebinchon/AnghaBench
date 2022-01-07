
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sge_chain_data {scalar_t__ sge_tx_cnt; scalar_t__ sge_tx_cons; scalar_t__ sge_tx_prod; int sge_tx_dmamap; int sge_tx_tag; } ;
struct sge_list_data {TYPE_1__* sge_tx_ring; } ;
struct sge_softc {struct sge_chain_data sge_cdata; struct sge_list_data sge_ldata; } ;
struct TYPE_2__ {int sge_flags; } ;


 int BUS_DMASYNC_PREREAD ;
 int BUS_DMASYNC_PREWRITE ;
 int RING_END ;
 int SGE_LOCK_ASSERT (struct sge_softc*) ;
 int SGE_TX_RING_CNT ;
 int SGE_TX_RING_SZ ;
 int bus_dmamap_sync (int ,int ,int) ;
 int bzero (TYPE_1__*,int ) ;
 int htole32 (int ) ;

__attribute__((used)) static int
sge_list_tx_init(struct sge_softc *sc)
{
 struct sge_list_data *ld;
 struct sge_chain_data *cd;

 SGE_LOCK_ASSERT(sc);
 ld = &sc->sge_ldata;
 cd = &sc->sge_cdata;
 bzero(ld->sge_tx_ring, SGE_TX_RING_SZ);
 ld->sge_tx_ring[SGE_TX_RING_CNT - 1].sge_flags = htole32(RING_END);
 bus_dmamap_sync(cd->sge_tx_tag, cd->sge_tx_dmamap,
     BUS_DMASYNC_PREREAD | BUS_DMASYNC_PREWRITE);
 cd->sge_tx_prod = 0;
 cd->sge_tx_cons = 0;
 cd->sge_tx_cnt = 0;
 return (0);
}
