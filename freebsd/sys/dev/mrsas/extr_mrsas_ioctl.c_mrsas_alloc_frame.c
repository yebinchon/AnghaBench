
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int32_t ;
struct mrsas_softc {int mrsas_dev; int mficmd_frame_tag; } ;
struct mrsas_mfi_cmd {void* frame_mem; int frame_phys_addr; int frame_dmamap; } ;


 int BUS_DMA_NOWAIT ;
 int MRSAS_MFI_FRAME_SIZE ;
 scalar_t__ bus_dmamap_load (int ,int ,void*,int ,int ,int *,int ) ;
 scalar_t__ bus_dmamem_alloc (int ,void**,int ,int *) ;
 int device_printf (int ,char*) ;
 int mrsas_alloc_cb ;

void *
mrsas_alloc_frame(struct mrsas_softc *sc, struct mrsas_mfi_cmd *cmd)
{
 u_int32_t frame_size = MRSAS_MFI_FRAME_SIZE;

 if (bus_dmamem_alloc(sc->mficmd_frame_tag, (void **)&cmd->frame_mem,
     BUS_DMA_NOWAIT, &cmd->frame_dmamap)) {
  device_printf(sc->mrsas_dev, "Cannot alloc MFI frame memory\n");
  return (((void*)0));
 }
 if (bus_dmamap_load(sc->mficmd_frame_tag, cmd->frame_dmamap,
     cmd->frame_mem, frame_size, mrsas_alloc_cb,
     &cmd->frame_phys_addr, BUS_DMA_NOWAIT)) {
  device_printf(sc->mrsas_dev, "Cannot load IO request memory\n");
  return (((void*)0));
 }
 return (cmd->frame_mem);
}
