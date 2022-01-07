
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mly_softc {int * mly_packet; int mly_packetmap; int mly_packet_dmat; int mly_buffer_dmat; } ;
struct mly_command {int mc_datamap; } ;


 int bus_dmamap_destroy (int ,int ) ;
 int bus_dmamap_unload (int ,int ) ;
 int bus_dmamem_free (int ,int *,int ) ;
 scalar_t__ mly_alloc_command (struct mly_softc*,struct mly_command**) ;

__attribute__((used)) static void
mly_release_commands(struct mly_softc *sc)
{
    struct mly_command *mc;


    while (mly_alloc_command(sc, &mc) == 0)
 bus_dmamap_destroy(sc->mly_buffer_dmat, mc->mc_datamap);


    if (sc->mly_packet != ((void*)0)) {
 bus_dmamap_unload(sc->mly_packet_dmat, sc->mly_packetmap);
 bus_dmamem_free(sc->mly_packet_dmat, sc->mly_packet, sc->mly_packetmap);
 sc->mly_packet = ((void*)0);
    }
}
