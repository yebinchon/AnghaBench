
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int age_rr_ring_map; int age_rr_ring_tag; scalar_t__ age_rr_cons; } ;
struct age_ring_data {int age_rr_ring; } ;
struct age_softc {TYPE_1__ age_cdata; struct age_ring_data age_rdata; } ;


 int AGE_LOCK_ASSERT (struct age_softc*) ;
 int AGE_RR_RING_SZ ;
 int AGE_RXCHAIN_RESET (struct age_softc*) ;
 int BUS_DMASYNC_PREREAD ;
 int BUS_DMASYNC_PREWRITE ;
 int bus_dmamap_sync (int ,int ,int) ;
 int bzero (int ,int ) ;

__attribute__((used)) static void
age_init_rr_ring(struct age_softc *sc)
{
 struct age_ring_data *rd;

 AGE_LOCK_ASSERT(sc);

 sc->age_cdata.age_rr_cons = 0;
 AGE_RXCHAIN_RESET(sc);

 rd = &sc->age_rdata;
 bzero(rd->age_rr_ring, AGE_RR_RING_SZ);
 bus_dmamap_sync(sc->age_cdata.age_rr_ring_tag,
     sc->age_cdata.age_rr_ring_map,
     BUS_DMASYNC_PREREAD | BUS_DMASYNC_PREWRITE);
}
