
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mrsas_softc {int mficmd_frame_tag; } ;
struct mrsas_mfi_cmd {int frame_dmamap; int * frame_mem; scalar_t__ frame_phys_addr; } ;


 int bus_dmamap_unload (int ,int ) ;
 int bus_dmamem_free (int ,int *,int ) ;

void
mrsas_free_frame(struct mrsas_softc *sc, struct mrsas_mfi_cmd *cmd)
{
 if (cmd->frame_phys_addr)
  bus_dmamap_unload(sc->mficmd_frame_tag, cmd->frame_dmamap);
 if (cmd->frame_mem != ((void*)0))
  bus_dmamem_free(sc->mficmd_frame_tag, cmd->frame_mem, cmd->frame_dmamap);
}
