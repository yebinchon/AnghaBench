
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_9__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef int uint32_t ;
typedef int uint16_t ;
struct pci_devinfo {int dummy; } ;
struct TYPE_11__ {int mtx; } ;
struct mxge_slice_state {TYPE_1__ tx; } ;
struct TYPE_12__ {int num_slices; int dying; int co_hdl; int dev; int watchdog_resets; struct mxge_slice_state* ss; TYPE_9__* ifp; scalar_t__ link_state; } ;
typedef TYPE_2__ mxge_softc_t ;
struct TYPE_13__ {int if_drv_flags; } ;


 int DELAY (int) ;
 int ENXIO ;
 int IFF_DRV_RUNNING ;
 int LINK_STATE_DOWN ;
 int PCIM_CMD_BUSMASTEREN ;
 int PCIR_COMMAND ;
 int callout_reset (int *,int ,int ,TYPE_2__*) ;
 struct pci_devinfo* device_get_ivars (int ) ;
 int device_printf (int ,char*,...) ;
 int if_link_state_change (TYPE_9__*,int ) ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 int mxge_close (TYPE_2__*,int) ;
 int mxge_load_firmware (TYPE_2__*,int ) ;
 int mxge_open (TYPE_2__*) ;
 int mxge_read_reboot (TYPE_2__*) ;
 int mxge_setup_cfg_space (TYPE_2__*) ;
 int mxge_start_locked (struct mxge_slice_state*) ;
 int mxge_tick ;
 int mxge_ticks ;
 int pci_cfg_restore (int ,struct pci_devinfo*) ;
 int pci_read_config (int ,int ,int) ;

__attribute__((used)) static void
mxge_watchdog_reset(mxge_softc_t *sc)
{
 struct pci_devinfo *dinfo;
 struct mxge_slice_state *ss;
 int err, running, s, num_tx_slices = 1;
 uint32_t reboot;
 uint16_t cmd;

 err = ENXIO;

 device_printf(sc->dev, "Watchdog reset!\n");
 cmd = pci_read_config(sc->dev, PCIR_COMMAND, 2);
 if (cmd == 0xffff) {





  DELAY(1000*100);
  cmd = pci_read_config(sc->dev, PCIR_COMMAND, 2);
  if (cmd == 0xffff) {
   device_printf(sc->dev, "NIC disappeared!\n");
  }
 }
 if ((cmd & PCIM_CMD_BUSMASTEREN) == 0) {

  reboot = mxge_read_reboot(sc);
  device_printf(sc->dev, "NIC rebooted, status = 0x%x\n",
         reboot);
  running = sc->ifp->if_drv_flags & IFF_DRV_RUNNING;
  if (running) {







   if (sc->link_state) {
    sc->link_state = 0;
    if_link_state_change(sc->ifp,
           LINK_STATE_DOWN);
   }




   for (s = 0; s < num_tx_slices; s++) {
    ss = &sc->ss[s];
    mtx_lock(&ss->tx.mtx);
   }
   mxge_close(sc, 1);
  }

  dinfo = device_get_ivars(sc->dev);
  pci_cfg_restore(sc->dev, dinfo);


  mxge_setup_cfg_space(sc);


  err = mxge_load_firmware(sc, 0);
  if (err) {
   device_printf(sc->dev,
          "Unable to re-load f/w\n");
  }
  if (running) {
   if (!err)
    err = mxge_open(sc);

   for (s = 0; s < num_tx_slices; s++) {
    ss = &sc->ss[s];



    mtx_unlock(&ss->tx.mtx);
   }
  }
  sc->watchdog_resets++;
 } else {
  device_printf(sc->dev,
         "NIC did not reboot, not resetting\n");
  err = 0;
 }
 if (err) {
  device_printf(sc->dev, "watchdog reset failed\n");
 } else {
  if (sc->dying == 2)
   sc->dying = 0;
  callout_reset(&sc->co_hdl, mxge_ticks, mxge_tick, sc);
 }
}
