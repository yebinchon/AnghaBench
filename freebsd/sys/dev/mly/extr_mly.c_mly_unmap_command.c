
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mly_softc {int mly_buffer_dmat; } ;
struct mly_command {int mc_flags; int mc_datamap; int * mc_data; struct mly_softc* mc_sc; } ;


 int BUS_DMASYNC_POSTREAD ;
 int BUS_DMASYNC_POSTWRITE ;
 int MLY_CMD_DATAIN ;
 int MLY_CMD_DATAOUT ;
 int MLY_CMD_MAPPED ;
 int bus_dmamap_sync (int ,int ,int ) ;
 int bus_dmamap_unload (int ,int ) ;
 int debug_called (int) ;

__attribute__((used)) static void
mly_unmap_command(struct mly_command *mc)
{
    struct mly_softc *sc = mc->mc_sc;

    debug_called(2);

    if (!(mc->mc_flags & MLY_CMD_MAPPED))
 return;


    if (mc->mc_data != ((void*)0)) {
 if (mc->mc_flags & MLY_CMD_DATAIN)
     bus_dmamap_sync(sc->mly_buffer_dmat, mc->mc_datamap, BUS_DMASYNC_POSTREAD);
 if (mc->mc_flags & MLY_CMD_DATAOUT)
     bus_dmamap_sync(sc->mly_buffer_dmat, mc->mc_datamap, BUS_DMASYNC_POSTWRITE);

 bus_dmamap_unload(sc->mly_buffer_dmat, mc->mc_datamap);
    }
    mc->mc_flags &= ~MLY_CMD_MAPPED;
}
