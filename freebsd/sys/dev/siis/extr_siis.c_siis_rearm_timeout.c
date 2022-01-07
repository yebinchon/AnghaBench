
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int timeout_t ;
struct siis_slot {scalar_t__ state; TYPE_2__* ccb; int timeout; } ;
struct siis_channel {int toslots; struct siis_slot* slot; int mtx; } ;
typedef int device_t ;
struct TYPE_3__ {int timeout; } ;
struct TYPE_4__ {TYPE_1__ ccb_h; } ;


 int MA_OWNED ;
 int SBT_1MS ;
 int SIIS_MAX_SLOTS ;
 scalar_t__ SIIS_SLOT_RUNNING ;
 int callout_reset_sbt (int *,int,int ,int *,struct siis_slot*,int ) ;
 struct siis_channel* device_get_softc (int ) ;
 int mtx_assert (int *,int ) ;
 scalar_t__ siis_timeout ;

__attribute__((used)) static void
siis_rearm_timeout(device_t dev)
{
 struct siis_channel *ch = device_get_softc(dev);
 int i;

 mtx_assert(&ch->mtx, MA_OWNED);
 for (i = 0; i < SIIS_MAX_SLOTS; i++) {
  struct siis_slot *slot = &ch->slot[i];


  if (slot->state < SIIS_SLOT_RUNNING)
   continue;
  if ((ch->toslots & (1 << i)) == 0)
   continue;
  callout_reset_sbt(&slot->timeout,
      SBT_1MS * slot->ccb->ccb_h.timeout, 0,
      (timeout_t*)siis_timeout, slot, 0);
 }
}
