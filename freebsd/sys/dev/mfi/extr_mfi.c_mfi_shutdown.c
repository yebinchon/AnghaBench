
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct mfi_softc {int cm_aen_abort; int cm_map_abort; int mfi_io_lock; int mfi_dev; int * mfi_map_sync_cm; int * mfi_aen_cm; } ;
struct TYPE_4__ {int flags; } ;
struct mfi_dcmd_frame {TYPE_2__ header; } ;
struct mfi_command {int * cm_data; int cm_flags; TYPE_1__* cm_frame; } ;
struct TYPE_3__ {struct mfi_dcmd_frame dcmd; } ;


 int MFI_CMD_POLLED ;
 int MFI_DCMD_CTRL_SHUTDOWN ;
 int MFI_FRAME_DIR_NONE ;
 int device_printf (int ,char*) ;
 int mfi_abort (struct mfi_softc*,int **) ;
 int mfi_dcmd_command (struct mfi_softc*,struct mfi_command**,int ,int *,int ) ;
 int mfi_mapcmd (struct mfi_softc*,struct mfi_command*) ;
 int mfi_release_command (struct mfi_command*) ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;

int
mfi_shutdown(struct mfi_softc *sc)
{
 struct mfi_dcmd_frame *dcmd;
 struct mfi_command *cm;
 int error;


 if (sc->mfi_aen_cm != ((void*)0)) {
  sc->cm_aen_abort = 1;
  mfi_abort(sc, &sc->mfi_aen_cm);
 }

 if (sc->mfi_map_sync_cm != ((void*)0)) {
  sc->cm_map_abort = 1;
  mfi_abort(sc, &sc->mfi_map_sync_cm);
 }

 mtx_lock(&sc->mfi_io_lock);
 error = mfi_dcmd_command(sc, &cm, MFI_DCMD_CTRL_SHUTDOWN, ((void*)0), 0);
 if (error) {
  mtx_unlock(&sc->mfi_io_lock);
  return (error);
 }

 dcmd = &cm->cm_frame->dcmd;
 dcmd->header.flags = MFI_FRAME_DIR_NONE;
 cm->cm_flags = MFI_CMD_POLLED;
 cm->cm_data = ((void*)0);

 if ((error = mfi_mapcmd(sc, cm)) != 0)
  device_printf(sc->mfi_dev, "Failed to shutdown controller\n");

 mfi_release_command(cm);
 mtx_unlock(&sc->mfi_io_lock);
 return (error);
}
