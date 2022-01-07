
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct mxge_slice_state {int if_drv_flags; } ;
struct TYPE_7__ {int num_slices; int down_cnt; int intr_coal_delay; int dev; TYPE_1__* ifp; struct mxge_slice_state* ss; } ;
typedef TYPE_2__ mxge_softc_t ;
typedef int mxge_cmd_t ;
struct TYPE_6__ {int if_drv_flags; } ;


 int DELAY (int) ;
 int IFF_DRV_RUNNING ;
 int MXGEFW_CMD_ETHERNET_DOWN ;
 int device_printf (int ,char*) ;
 int mxge_free_mbufs (TYPE_2__*) ;
 int mxge_send_cmd (TYPE_2__*,int ,int *) ;
 int wmb () ;

__attribute__((used)) static int
mxge_close(mxge_softc_t *sc, int down)
{
 mxge_cmd_t cmd;
 int err, old_down_cnt;
 sc->ifp->if_drv_flags &= ~IFF_DRV_RUNNING;
 if (!down) {
  old_down_cnt = sc->down_cnt;
  wmb();
  err = mxge_send_cmd(sc, MXGEFW_CMD_ETHERNET_DOWN, &cmd);
  if (err) {
   device_printf(sc->dev,
          "Couldn't bring down link\n");
  }
  if (old_down_cnt == sc->down_cnt) {

   DELAY(10 * sc->intr_coal_delay);
  }
  wmb();
  if (old_down_cnt == sc->down_cnt) {
   device_printf(sc->dev, "never got down irq\n");
  }
 }
 mxge_free_mbufs(sc);

 return 0;
}
