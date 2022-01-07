
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sdhci_slot {int * curcmd; struct mmc_request* req; int timeout_callout; } ;
struct mmc_request {int (* done ) (struct mmc_request*) ;} ;


 int callout_stop (int *) ;
 int stub1 (struct mmc_request*) ;

__attribute__((used)) static void
sdhci_req_done(struct sdhci_slot *slot)
{
 struct mmc_request *req;

 if (slot->req != ((void*)0) && slot->curcmd != ((void*)0)) {
  callout_stop(&slot->timeout_callout);
  req = slot->req;
  slot->req = ((void*)0);
  slot->curcmd = ((void*)0);
  req->done(req);
 }
}
