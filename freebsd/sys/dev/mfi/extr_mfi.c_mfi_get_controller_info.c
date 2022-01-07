
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint32_t ;
struct mfi_softc {int mfi_max_io; int mfi_max_sge; int mfi_io_lock; int disableOnlineCtrlReset; int mfi_buffer_dmat; int mfi_dev; } ;
struct TYPE_5__ {int disableOnlineCtrlReset; } ;
struct TYPE_6__ {TYPE_2__ OnOffProperties; } ;
struct TYPE_4__ {int max; } ;
struct mfi_ctrl_info {int max_strips_per_io; int max_request_size; TYPE_3__ properties; TYPE_1__ stripe_sz_ops; } ;
struct mfi_command {int cm_flags; int cm_dmamap; } ;


 int BUS_DMASYNC_POSTREAD ;
 int MFI_CMD_DATAIN ;
 int MFI_CMD_POLLED ;
 int MFI_DCMD_CTRL_GETINFO ;
 int MFI_SECTOR_LEN ;
 int M_MFIBUF ;
 int PAGE_SIZE ;
 int bus_dmamap_sync (int ,int ,int ) ;
 int bus_dmamap_unload (int ,int ) ;
 int device_printf (int ,char*) ;
 int free (struct mfi_ctrl_info*,int ) ;
 int mfi_dcmd_command (struct mfi_softc*,struct mfi_command**,int ,void**,int) ;
 int mfi_mapcmd (struct mfi_softc*,struct mfi_command*) ;
 int mfi_release_command (struct mfi_command*) ;
 int min (int,int) ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;

__attribute__((used)) static int
mfi_get_controller_info(struct mfi_softc *sc)
{
 struct mfi_command *cm = ((void*)0);
 struct mfi_ctrl_info *ci = ((void*)0);
 uint32_t max_sectors_1, max_sectors_2;
 int error;

 mtx_lock(&sc->mfi_io_lock);
 error = mfi_dcmd_command(sc, &cm, MFI_DCMD_CTRL_GETINFO,
     (void **)&ci, sizeof(*ci));
 if (error)
  goto out;
 cm->cm_flags = MFI_CMD_DATAIN | MFI_CMD_POLLED;

 if ((error = mfi_mapcmd(sc, cm)) != 0) {
  device_printf(sc->mfi_dev, "Failed to get controller info\n");
  sc->mfi_max_io = (sc->mfi_max_sge - 1) * PAGE_SIZE /
      MFI_SECTOR_LEN;
  error = 0;
  goto out;
 }

 bus_dmamap_sync(sc->mfi_buffer_dmat, cm->cm_dmamap,
     BUS_DMASYNC_POSTREAD);
 bus_dmamap_unload(sc->mfi_buffer_dmat, cm->cm_dmamap);

 max_sectors_1 = (1 << ci->stripe_sz_ops.max) * ci->max_strips_per_io;
 max_sectors_2 = ci->max_request_size;
 sc->mfi_max_io = min(max_sectors_1, max_sectors_2);
 sc->disableOnlineCtrlReset =
     ci->properties.OnOffProperties.disableOnlineCtrlReset;

out:
 if (ci)
  free(ci, M_MFIBUF);
 if (cm)
  mfi_release_command(cm);
 mtx_unlock(&sc->mfi_io_lock);
 return (error);
}
