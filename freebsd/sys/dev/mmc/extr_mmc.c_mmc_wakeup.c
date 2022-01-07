
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mmc_softc {int dummy; } ;
struct mmc_request {int flags; scalar_t__ done_data; } ;


 int MMC_LOCK (struct mmc_softc*) ;
 int MMC_REQ_DONE ;
 int MMC_UNLOCK (struct mmc_softc*) ;
 int wakeup (struct mmc_request*) ;

__attribute__((used)) static void
mmc_wakeup(struct mmc_request *req)
{
 struct mmc_softc *sc;

 sc = (struct mmc_softc *)req->done_data;
 MMC_LOCK(sc);
 req->flags |= MMC_REQ_DONE;
 MMC_UNLOCK(sc);
 wakeup(req);
}
