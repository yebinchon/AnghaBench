
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int alc_rr_ring_map; int alc_rr_ring_tag; scalar_t__ alc_rr_cons; } ;
struct alc_ring_data {int alc_rr_ring; } ;
struct alc_softc {TYPE_1__ alc_cdata; struct alc_ring_data alc_rdata; } ;


 int ALC_LOCK_ASSERT (struct alc_softc*) ;
 int ALC_RR_RING_SZ ;
 int ALC_RXCHAIN_RESET (struct alc_softc*) ;
 int BUS_DMASYNC_PREREAD ;
 int BUS_DMASYNC_PREWRITE ;
 int bus_dmamap_sync (int ,int ,int) ;
 int bzero (int ,int ) ;

__attribute__((used)) static void
alc_init_rr_ring(struct alc_softc *sc)
{
 struct alc_ring_data *rd;

 ALC_LOCK_ASSERT(sc);

 sc->alc_cdata.alc_rr_cons = 0;
 ALC_RXCHAIN_RESET(sc);

 rd = &sc->alc_rdata;
 bzero(rd->alc_rr_ring, ALC_RR_RING_SZ);
 bus_dmamap_sync(sc->alc_cdata.alc_rr_ring_tag,
     sc->alc_cdata.alc_rr_ring_map,
     BUS_DMASYNC_PREREAD | BUS_DMASYNC_PREWRITE);
}
