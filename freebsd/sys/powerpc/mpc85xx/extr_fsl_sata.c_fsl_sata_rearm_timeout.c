
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int timeout_t ;
struct fsl_sata_slot {scalar_t__ state; TYPE_2__* ccb; int timeout; } ;
struct fsl_sata_channel {int toslots; struct fsl_sata_slot* slot; int mtx; } ;
struct TYPE_3__ {int timeout; } ;
struct TYPE_4__ {TYPE_1__ ccb_h; } ;


 int FSL_SATA_MAX_SLOTS ;
 scalar_t__ FSL_SATA_SLOT_RUNNING ;
 int MA_OWNED ;
 int SBT_1MS ;
 int callout_reset_sbt (int *,int,int ,int *,struct fsl_sata_slot*,int ) ;
 scalar_t__ fsl_sata_timeout ;
 int mtx_assert (int *,int ) ;

__attribute__((used)) static void
fsl_sata_rearm_timeout(struct fsl_sata_channel *ch)
{
 int i;

 mtx_assert(&ch->mtx, MA_OWNED);
 for (i = 0; i < FSL_SATA_MAX_SLOTS; i++) {
  struct fsl_sata_slot *slot = &ch->slot[i];


  if (slot->state < FSL_SATA_SLOT_RUNNING)
   continue;
  if ((ch->toslots & (1 << i)) == 0)
   continue;
  callout_reset_sbt(&slot->timeout,
           SBT_1MS * slot->ccb->ccb_h.timeout / 2, 0,
      (timeout_t*)fsl_sata_timeout, slot, 0);
 }
}
