
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct siis_channel {int recovery; TYPE_1__* slot; int numrslots; int sim; int recoverycmd; int mtx; } ;
typedef int device_t ;
struct TYPE_2__ {scalar_t__ state; } ;


 int MA_OWNED ;
 int SIIS_ERR_TIMEOUT ;
 int SIIS_MAX_SLOTS ;
 scalar_t__ SIIS_SLOT_RUNNING ;
 struct siis_channel* device_get_softc (int ) ;
 int mtx_assert (int *,int ) ;
 int siis_end_transaction (TYPE_1__*,int ) ;
 int xpt_freeze_simq (int ,int ) ;

__attribute__((used)) static void
siis_process_timeout(device_t dev)
{
 struct siis_channel *ch = device_get_softc(dev);
 int i;

 mtx_assert(&ch->mtx, MA_OWNED);
 if (!ch->recoverycmd && !ch->recovery) {
  xpt_freeze_simq(ch->sim, ch->numrslots);
  ch->recovery = 1;
 }

 for (i = 0; i < SIIS_MAX_SLOTS; i++) {

  if (ch->slot[i].state < SIIS_SLOT_RUNNING)
   continue;
  siis_end_transaction(&ch->slot[i], SIIS_ERR_TIMEOUT);
 }
}
