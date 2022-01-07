
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sdhci_slot {int dummy; } ;
struct mmc_request {int flags; struct sdhci_slot* done_data; } ;


 int MMC_REQ_DONE ;
 int wakeup (struct mmc_request*) ;

__attribute__((used)) static void
sdhci_req_wakeup(struct mmc_request *req)
{
 struct sdhci_slot *slot;

 slot = req->done_data;
 req->flags |= MMC_REQ_DONE;
 wakeup(req);
}
