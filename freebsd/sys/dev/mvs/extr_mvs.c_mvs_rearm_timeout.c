
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int timeout_t ;
struct mvs_slot {scalar_t__ state; TYPE_2__* ccb; int timeout; } ;
struct mvs_channel {int toslots; struct mvs_slot* slot; int mtx; } ;
typedef int device_t ;
struct TYPE_3__ {int timeout; } ;
struct TYPE_4__ {TYPE_1__ ccb_h; } ;


 int MA_OWNED ;
 int MVS_MAX_SLOTS ;
 scalar_t__ MVS_SLOT_RUNNING ;
 int SBT_1MS ;
 int callout_reset_sbt (int *,int,int ,int *,struct mvs_slot*,int ) ;
 struct mvs_channel* device_get_softc (int ) ;
 int mtx_assert (int *,int ) ;
 scalar_t__ mvs_timeout ;

__attribute__((used)) static void
mvs_rearm_timeout(device_t dev)
{
 struct mvs_channel *ch = device_get_softc(dev);
 int i;

 mtx_assert(&ch->mtx, MA_OWNED);
 for (i = 0; i < MVS_MAX_SLOTS; i++) {
  struct mvs_slot *slot = &ch->slot[i];


  if (slot->state < MVS_SLOT_RUNNING)
   continue;
  if ((ch->toslots & (1 << i)) == 0)
   continue;
  callout_reset_sbt(&slot->timeout,
      SBT_1MS * slot->ccb->ccb_h.timeout / 2, 0,
      (timeout_t*)mvs_timeout, slot, 0);
 }
}
