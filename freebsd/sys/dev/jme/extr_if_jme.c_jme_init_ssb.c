
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int jme_ssb_map; int jme_ssb_tag; } ;
struct jme_ring_data {int jme_ssb_block; } ;
struct jme_softc {TYPE_1__ jme_cdata; struct jme_ring_data jme_rdata; } ;


 int BUS_DMASYNC_PREREAD ;
 int BUS_DMASYNC_PREWRITE ;
 int JME_SSB_SIZE ;
 int bus_dmamap_sync (int ,int ,int) ;
 int bzero (int ,int ) ;

__attribute__((used)) static void
jme_init_ssb(struct jme_softc *sc)
{
 struct jme_ring_data *rd;

 rd = &sc->jme_rdata;
 bzero(rd->jme_ssb_block, JME_SSB_SIZE);
 bus_dmamap_sync(sc->jme_cdata.jme_ssb_tag, sc->jme_cdata.jme_ssb_map,
     BUS_DMASYNC_PREREAD | BUS_DMASYNC_PREWRITE);
}
