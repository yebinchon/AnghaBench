
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct mmc_softc {int dev; int sc_mtx; } ;
struct mmc_request {int flags; TYPE_2__* cmd; struct mmc_softc* done_data; int done; } ;
struct TYPE_4__ {int error; int opcode; TYPE_1__* data; int flags; int arg; } ;
struct TYPE_3__ {scalar_t__ len; } ;


 int MMCBR_REQUEST (int ,int ,struct mmc_request*) ;
 int MMC_ERR_NONE ;
 int MMC_LOCK (struct mmc_softc*) ;
 int MMC_REQ_DONE ;
 int MMC_UNLOCK (struct mmc_softc*) ;
 scalar_t__ __predict_false (int) ;
 int device_get_parent (int ) ;
 int device_printf (int ,char*,int ,int ,...) ;
 int mmc_debug ;
 int mmc_wakeup ;
 int msleep (struct mmc_request*,int *,int ,char*,int ) ;
 int printf (char*,...) ;

__attribute__((used)) static int
mmc_wait_for_req(struct mmc_softc *sc, struct mmc_request *req)
{

 req->done = mmc_wakeup;
 req->done_data = sc;
 if (__predict_false(mmc_debug > 1)) {
  device_printf(sc->dev, "REQUEST: CMD%d arg %#x flags %#x",
      req->cmd->opcode, req->cmd->arg, req->cmd->flags);
  if (req->cmd->data) {
   printf(" data %d\n", (int)req->cmd->data->len);
  } else
   printf("\n");
 }
 MMCBR_REQUEST(device_get_parent(sc->dev), sc->dev, req);
 MMC_LOCK(sc);
 while ((req->flags & MMC_REQ_DONE) == 0)
  msleep(req, &sc->sc_mtx, 0, "mmcreq", 0);
 MMC_UNLOCK(sc);
 if (__predict_false(mmc_debug > 2 || (mmc_debug > 0 &&
     req->cmd->error != MMC_ERR_NONE)))
  device_printf(sc->dev, "CMD%d RESULT: %d\n",
      req->cmd->opcode, req->cmd->error);
 return (0);
}
