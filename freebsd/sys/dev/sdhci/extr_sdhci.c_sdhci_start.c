
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sdhci_slot {int flags; int quirks; scalar_t__ curcmd; struct mmc_request* req; } ;
struct mmc_request {scalar_t__ stop; TYPE_1__* cmd; } ;
struct TYPE_2__ {int error; } ;


 int CMD_STARTED ;
 int SDHCI_QUIRK_BROKEN_AUTO_STOP ;
 int SDHCI_QUIRK_RESET_AFTER_REQUEST ;
 int SDHCI_RESET_CMD ;
 int SDHCI_RESET_DATA ;
 int STOP_STARTED ;
 scalar_t__ __predict_false (int) ;
 int sdhci_debug ;
 int sdhci_req_done (struct sdhci_slot*) ;
 int sdhci_reset (struct sdhci_slot*,int ) ;
 int sdhci_start_command (struct sdhci_slot*,TYPE_1__*) ;
 int slot_printf (struct sdhci_slot*,char*,int ) ;

__attribute__((used)) static void
sdhci_start(struct sdhci_slot *slot)
{
 const struct mmc_request *req;

 req = slot->req;
 if (req == ((void*)0))
  return;

 if (!(slot->flags & CMD_STARTED)) {
  slot->flags |= CMD_STARTED;
  sdhci_start_command(slot, req->cmd);
  return;
 }
 if ((slot->quirks & SDHCI_QUIRK_BROKEN_AUTO_STOP) &&
     !(slot->flags & STOP_STARTED) && req->stop) {
  slot->flags |= STOP_STARTED;
  sdhci_start_command(slot, req->stop);
  return;
 }
 if (__predict_false(sdhci_debug > 1))
  slot_printf(slot, "result: %d\n", req->cmd->error);
 if (!req->cmd->error &&
     ((slot->curcmd == req->stop &&
      (slot->quirks & SDHCI_QUIRK_BROKEN_AUTO_STOP)) ||
      (slot->quirks & SDHCI_QUIRK_RESET_AFTER_REQUEST))) {
  sdhci_reset(slot, SDHCI_RESET_CMD);
  sdhci_reset(slot, SDHCI_RESET_DATA);
 }

 sdhci_req_done(slot);
}
