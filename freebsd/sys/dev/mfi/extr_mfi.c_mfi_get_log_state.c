
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mfi_softc {int mfi_buffer_dmat; int mfi_dev; int mfi_io_lock; } ;
struct mfi_evt_log_state {int dummy; } ;
struct mfi_command {int cm_flags; int cm_dmamap; } ;


 int BUS_DMASYNC_POSTREAD ;
 int MA_OWNED ;
 int MFI_CMD_DATAIN ;
 int MFI_CMD_POLLED ;
 int MFI_DCMD_CTRL_EVENT_GETINFO ;
 int bus_dmamap_sync (int ,int ,int ) ;
 int bus_dmamap_unload (int ,int ) ;
 int device_printf (int ,char*) ;
 int mfi_dcmd_command (struct mfi_softc*,struct mfi_command**,int ,void**,int) ;
 int mfi_mapcmd (struct mfi_softc*,struct mfi_command*) ;
 int mfi_release_command (struct mfi_command*) ;
 int mtx_assert (int *,int ) ;

__attribute__((used)) static int
mfi_get_log_state(struct mfi_softc *sc, struct mfi_evt_log_state **log_state)
{
 struct mfi_command *cm = ((void*)0);
 int error;

 mtx_assert(&sc->mfi_io_lock, MA_OWNED);
 error = mfi_dcmd_command(sc, &cm, MFI_DCMD_CTRL_EVENT_GETINFO,
     (void **)log_state, sizeof(**log_state));
 if (error)
  goto out;
 cm->cm_flags = MFI_CMD_DATAIN | MFI_CMD_POLLED;

 if ((error = mfi_mapcmd(sc, cm)) != 0) {
  device_printf(sc->mfi_dev, "Failed to get log state\n");
  goto out;
 }

 bus_dmamap_sync(sc->mfi_buffer_dmat, cm->cm_dmamap,
     BUS_DMASYNC_POSTREAD);
 bus_dmamap_unload(sc->mfi_buffer_dmat, cm->cm_dmamap);

out:
 if (cm)
  mfi_release_command(cm);

 return (error);
}
