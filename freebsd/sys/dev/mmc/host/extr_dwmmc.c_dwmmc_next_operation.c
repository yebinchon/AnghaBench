
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mmc_request {int (* done ) (struct mmc_request*) ;int stop; int cmd; } ;
struct dwmmc_softc {int flags; int * curcmd; struct mmc_request* req; int use_auto_stop; scalar_t__ cmd_done; scalar_t__ dto_rcvd; scalar_t__ acd_rcvd; } ;


 int PENDING_CMD ;
 int PENDING_STOP ;
 int READ4 (struct dwmmc_softc*,int ) ;
 int SDMMC_STATUS ;
 int SDMMC_STATUS_DATA_BUSY ;
 int dwmmc_start_cmd (struct dwmmc_softc*,int ) ;
 int stub1 (struct mmc_request*) ;

__attribute__((used)) static void
dwmmc_next_operation(struct dwmmc_softc *sc)
{
 struct mmc_request *req;

 req = sc->req;
 if (req == ((void*)0))
  return;

 sc->acd_rcvd = 0;
 sc->dto_rcvd = 0;
 sc->cmd_done = 0;







 while(READ4(sc, SDMMC_STATUS) & (SDMMC_STATUS_DATA_BUSY))
  continue;

 if (sc->flags & PENDING_CMD) {
  sc->flags &= ~PENDING_CMD;
  dwmmc_start_cmd(sc, req->cmd);
  return;
 } else if (sc->flags & PENDING_STOP && !sc->use_auto_stop) {
  sc->flags &= ~PENDING_STOP;
  dwmmc_start_cmd(sc, req->stop);
  return;
 }

 sc->req = ((void*)0);
 sc->curcmd = ((void*)0);
 req->done(req);
}
