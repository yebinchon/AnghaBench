
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int alc_smb_map; int alc_smb_tag; } ;
struct alc_ring_data {int alc_smb; } ;
struct alc_softc {TYPE_1__ alc_cdata; struct alc_ring_data alc_rdata; } ;


 int ALC_LOCK_ASSERT (struct alc_softc*) ;
 int ALC_SMB_SZ ;
 int BUS_DMASYNC_PREREAD ;
 int BUS_DMASYNC_PREWRITE ;
 int bus_dmamap_sync (int ,int ,int) ;
 int bzero (int ,int ) ;

__attribute__((used)) static void
alc_init_smb(struct alc_softc *sc)
{
 struct alc_ring_data *rd;

 ALC_LOCK_ASSERT(sc);

 rd = &sc->alc_rdata;
 bzero(rd->alc_smb, ALC_SMB_SZ);
 bus_dmamap_sync(sc->alc_cdata.alc_smb_tag, sc->alc_cdata.alc_smb_map,
     BUS_DMASYNC_PREREAD | BUS_DMASYNC_PREWRITE);
}
