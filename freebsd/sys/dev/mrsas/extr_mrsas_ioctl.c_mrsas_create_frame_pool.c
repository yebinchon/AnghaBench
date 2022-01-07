
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct mrsas_softc {int mrsas_dev; struct mrsas_mfi_cmd** mfi_cmd_list; int mficmd_frame_tag; int mrsas_parent_tag; } ;
struct mrsas_mfi_cmd {TYPE_2__* frame; int index; } ;
struct TYPE_4__ {scalar_t__ pad_0; int context; } ;
struct TYPE_5__ {TYPE_1__ io; } ;


 int BUS_DMA_ALLOCNOW ;
 int BUS_SPACE_MAXADDR ;
 int BUS_SPACE_MAXADDR_32BIT ;
 int ENOMEM ;
 int MRSAS_MAX_MFI_CMDS ;
 int MRSAS_MFI_FRAME_SIZE ;
 scalar_t__ bus_dma_tag_create (int ,int,int ,int ,int ,int *,int *,int ,int,int ,int ,int *,int *,int *) ;
 int device_printf (int ,char*) ;
 int memset (TYPE_2__*,int ,int ) ;
 TYPE_2__* mrsas_alloc_frame (struct mrsas_softc*,struct mrsas_mfi_cmd*) ;

__attribute__((used)) static int
mrsas_create_frame_pool(struct mrsas_softc *sc)
{
 int i;
 struct mrsas_mfi_cmd *cmd;

 if (bus_dma_tag_create(sc->mrsas_parent_tag,
     1, 0,
     BUS_SPACE_MAXADDR_32BIT,
     BUS_SPACE_MAXADDR,
     ((void*)0), ((void*)0),
     MRSAS_MFI_FRAME_SIZE,
     1,
     MRSAS_MFI_FRAME_SIZE,
     BUS_DMA_ALLOCNOW,
     ((void*)0), ((void*)0),
     &sc->mficmd_frame_tag)) {
  device_printf(sc->mrsas_dev, "Cannot create MFI frame tag\n");
  return (ENOMEM);
 }
 for (i = 0; i < MRSAS_MAX_MFI_CMDS; i++) {
  cmd = sc->mfi_cmd_list[i];
  cmd->frame = mrsas_alloc_frame(sc, cmd);
  if (cmd->frame == ((void*)0)) {
   device_printf(sc->mrsas_dev, "Cannot alloc MFI frame memory\n");
   return (ENOMEM);
  }
  memset(cmd->frame, 0, MRSAS_MFI_FRAME_SIZE);
  cmd->frame->io.context = cmd->index;
  cmd->frame->io.pad_0 = 0;
 }

 return (0);
}
