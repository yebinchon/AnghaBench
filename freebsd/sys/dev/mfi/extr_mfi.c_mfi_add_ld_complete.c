
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mfi_softc {int mfi_io_lock; int mfi_dev; int mfi_map_sync_cm; scalar_t__ cm_map_abort; } ;
struct mfi_ld_info {int dummy; } ;
struct mfi_frame_header {scalar_t__ cmd_status; } ;
struct mfi_command {struct mfi_ld_info* cm_private; TYPE_1__* cm_frame; struct mfi_softc* cm_sc; } ;
typedef int * device_t ;
struct TYPE_2__ {struct mfi_frame_header header; } ;


 int Giant ;
 scalar_t__ MFI_STAT_OK ;
 int M_MFIBUF ;
 int bus_generic_attach (int ) ;
 int * device_add_child (int ,char*,int) ;
 int device_printf (int ,char*) ;
 int device_set_desc (int *,char*) ;
 int device_set_ivars (int *,struct mfi_ld_info*) ;
 int free (struct mfi_ld_info*,int ) ;
 int mfi_release_command (struct mfi_command*) ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 int wakeup (int *) ;

__attribute__((used)) static void
mfi_add_ld_complete(struct mfi_command *cm)
{
 struct mfi_frame_header *hdr;
 struct mfi_ld_info *ld_info;
 struct mfi_softc *sc;
 device_t child;

 sc = cm->cm_sc;
 hdr = &cm->cm_frame->header;
 ld_info = cm->cm_private;

 if (sc->cm_map_abort || hdr->cmd_status != MFI_STAT_OK) {
  free(ld_info, M_MFIBUF);
  wakeup(&sc->mfi_map_sync_cm);
  mfi_release_command(cm);
  return;
 }
 wakeup(&sc->mfi_map_sync_cm);
 mfi_release_command(cm);

 mtx_unlock(&sc->mfi_io_lock);
 mtx_lock(&Giant);
 if ((child = device_add_child(sc->mfi_dev, "mfid", -1)) == ((void*)0)) {
  device_printf(sc->mfi_dev, "Failed to add logical disk\n");
  free(ld_info, M_MFIBUF);
  mtx_unlock(&Giant);
  mtx_lock(&sc->mfi_io_lock);
  return;
 }

 device_set_ivars(child, ld_info);
 device_set_desc(child, "MFI Logical Disk");
 bus_generic_attach(sc->mfi_dev);
 mtx_unlock(&Giant);
 mtx_lock(&sc->mfi_io_lock);
}
