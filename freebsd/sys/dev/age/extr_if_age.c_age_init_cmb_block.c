
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int age_cmb_block_map; int age_cmb_block_tag; } ;
struct age_ring_data {int age_cmb_block; } ;
struct age_softc {TYPE_1__ age_cdata; struct age_ring_data age_rdata; } ;


 int AGE_CMB_BLOCK_SZ ;
 int AGE_LOCK_ASSERT (struct age_softc*) ;
 int BUS_DMASYNC_PREREAD ;
 int BUS_DMASYNC_PREWRITE ;
 int bus_dmamap_sync (int ,int ,int) ;
 int bzero (int ,int ) ;

__attribute__((used)) static void
age_init_cmb_block(struct age_softc *sc)
{
 struct age_ring_data *rd;

 AGE_LOCK_ASSERT(sc);

 rd = &sc->age_rdata;
 bzero(rd->age_cmb_block, AGE_CMB_BLOCK_SZ);
 bus_dmamap_sync(sc->age_cdata.age_cmb_block_tag,
     sc->age_cdata.age_cmb_block_map,
     BUS_DMASYNC_PREREAD | BUS_DMASYNC_PREWRITE);
}
