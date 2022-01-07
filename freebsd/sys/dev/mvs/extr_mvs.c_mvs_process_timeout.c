
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mvs_channel {TYPE_1__* slot; int mtx; } ;
typedef int device_t ;
struct TYPE_2__ {scalar_t__ state; } ;


 int MA_OWNED ;
 int MVS_ERR_TIMEOUT ;
 int MVS_MAX_SLOTS ;
 scalar_t__ MVS_SLOT_RUNNING ;
 struct mvs_channel* device_get_softc (int ) ;
 int mtx_assert (int *,int ) ;
 int mvs_end_transaction (TYPE_1__*,int ) ;

__attribute__((used)) static void
mvs_process_timeout(device_t dev)
{
 struct mvs_channel *ch = device_get_softc(dev);
 int i;

 mtx_assert(&ch->mtx, MA_OWNED);

 for (i = 0; i < MVS_MAX_SLOTS; i++) {

  if (ch->slot[i].state < MVS_SLOT_RUNNING)
   continue;
  mvs_end_transaction(&ch->slot[i], MVS_ERR_TIMEOUT);
 }
}
