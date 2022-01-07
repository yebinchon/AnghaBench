
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mfip_softc {int * devq; int * sim; struct mfi_softc* mfi_sc; int state; int dev; } ;
struct mfi_softc {int mfi_io_lock; int mfi_cam_rescan_cb; int mfi_cam_start; } ;
typedef int device_t ;


 int EINVAL ;
 int ENOMEM ;
 int FALSE ;
 int MFIP_STATE_NONE ;
 int MFI_SCSI_MAX_CMDS ;
 int * cam_sim_alloc (int ,int ,char*,struct mfip_softc*,int ,int *,int,int ,int *) ;
 int cam_sim_free (int *,int ) ;
 int * cam_simq_alloc (int ) ;
 int cam_simq_free (int *) ;
 int device_get_parent (int ) ;
 void* device_get_softc (int ) ;
 int device_get_unit (int ) ;
 int device_printf (int ,char*) ;
 int mfip_cam_action ;
 int mfip_cam_poll ;
 int mfip_cam_rescan ;
 int mfip_start ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 scalar_t__ xpt_bus_register (int *,int ,int ) ;

__attribute__((used)) static int
mfip_attach(device_t dev)
{
 struct mfip_softc *sc;
 struct mfi_softc *mfisc;

 sc = device_get_softc(dev);
 if (sc == ((void*)0))
  return (EINVAL);

 mfisc = device_get_softc(device_get_parent(dev));
 sc->dev = dev;
 sc->state = MFIP_STATE_NONE;
 sc->mfi_sc = mfisc;
 mfisc->mfi_cam_start = mfip_start;

 if ((sc->devq = cam_simq_alloc(MFI_SCSI_MAX_CMDS)) == ((void*)0))
  return (ENOMEM);

 sc->sim = cam_sim_alloc(mfip_cam_action, mfip_cam_poll, "mfi", sc,
    device_get_unit(dev), &mfisc->mfi_io_lock, 1,
    MFI_SCSI_MAX_CMDS, sc->devq);
 if (sc->sim == ((void*)0)) {
  cam_simq_free(sc->devq);
  sc->devq = ((void*)0);
  device_printf(dev, "CAM SIM attach failed\n");
  return (EINVAL);
 }

 mfisc->mfi_cam_rescan_cb = mfip_cam_rescan;

 mtx_lock(&mfisc->mfi_io_lock);
 if (xpt_bus_register(sc->sim, dev, 0) != 0) {
  device_printf(dev, "XPT bus registration failed\n");
  cam_sim_free(sc->sim, FALSE);
  sc->sim = ((void*)0);
  cam_simq_free(sc->devq);
  sc->devq = ((void*)0);
  mtx_unlock(&mfisc->mfi_io_lock);
  return (EINVAL);
 }
 mtx_unlock(&mfisc->mfi_io_lock);

 return (0);
}
