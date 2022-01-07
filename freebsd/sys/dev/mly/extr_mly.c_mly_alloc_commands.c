
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef union mly_command_packet {int dummy; } mly_command_packet ;
struct mly_softc {int mly_buffer_dmat; scalar_t__ mly_packetphys; scalar_t__ mly_packet; struct mly_command* mly_command; int mly_packetmap; int mly_packet_dmat; TYPE_1__* mly_controllerinfo; } ;
struct mly_command {int mc_datamap; scalar_t__ mc_packetphys; scalar_t__ mc_packet; scalar_t__ mc_slot; struct mly_softc* mc_sc; } ;
struct TYPE_2__ {int maximum_parallel_commands; } ;


 int BUS_DMA_NOWAIT ;
 int ENOMEM ;
 int MLY_MAX_COMMANDS ;
 scalar_t__ MLY_SLOT_START ;
 int bus_dmamap_create (int ,int ,int *) ;
 scalar_t__ bus_dmamap_load (int ,int ,scalar_t__,int,int ,struct mly_softc*,int ) ;
 scalar_t__ bus_dmamem_alloc (int ,void**,int ,int *) ;
 int bzero (struct mly_command*,int) ;
 int min (int ,int ) ;
 int mly_alloc_commands_map ;
 int mly_release_command (struct mly_command*) ;

__attribute__((used)) static int
mly_alloc_commands(struct mly_softc *sc)
{
    struct mly_command *mc;
    int i, ncmd;

    if (sc->mly_controllerinfo == ((void*)0)) {
 ncmd = 4;
    } else {
 ncmd = min(MLY_MAX_COMMANDS, sc->mly_controllerinfo->maximum_parallel_commands);
    }





    if (bus_dmamem_alloc(sc->mly_packet_dmat, (void **)&sc->mly_packet,
    BUS_DMA_NOWAIT, &sc->mly_packetmap)) {
 return(ENOMEM);
    }
    if (bus_dmamap_load(sc->mly_packet_dmat, sc->mly_packetmap, sc->mly_packet,
   ncmd * sizeof(union mly_command_packet),
   mly_alloc_commands_map, sc, BUS_DMA_NOWAIT) != 0)
 return (ENOMEM);

    for (i = 0; i < ncmd; i++) {
 mc = &sc->mly_command[i];
 bzero(mc, sizeof(*mc));
 mc->mc_sc = sc;
 mc->mc_slot = MLY_SLOT_START + i;
 mc->mc_packet = sc->mly_packet + i;
 mc->mc_packetphys = sc->mly_packetphys + (i * sizeof(union mly_command_packet));
 if (!bus_dmamap_create(sc->mly_buffer_dmat, 0, &mc->mc_datamap))
     mly_release_command(mc);
    }
    return(0);
}
