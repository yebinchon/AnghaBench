
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int timeout_t ;
struct ahci_slot {scalar_t__ state; TYPE_2__* ccb; int timeout; } ;
struct ahci_channel {int numslots; int toslots; struct ahci_slot* slot; int mtx; } ;
struct TYPE_3__ {int timeout; } ;
struct TYPE_4__ {TYPE_1__ ccb_h; } ;


 scalar_t__ AHCI_SLOT_RUNNING ;
 int MA_OWNED ;
 int SBT_1MS ;
 scalar_t__ ahci_timeout ;
 int callout_reset_sbt (int *,int,int ,int *,struct ahci_slot*,int ) ;
 int mtx_assert (int *,int ) ;

__attribute__((used)) static void
ahci_rearm_timeout(struct ahci_channel *ch)
{
 int i;

 mtx_assert(&ch->mtx, MA_OWNED);
 for (i = 0; i < ch->numslots; i++) {
  struct ahci_slot *slot = &ch->slot[i];


  if (slot->state < AHCI_SLOT_RUNNING)
   continue;
  if ((ch->toslots & (1 << i)) == 0)
   continue;
  callout_reset_sbt(&slot->timeout,
              SBT_1MS * slot->ccb->ccb_h.timeout / 2, 0,
      (timeout_t*)ahci_timeout, slot, 0);
 }
}
