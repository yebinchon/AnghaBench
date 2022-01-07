
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ uint8_t ;
typedef int uint16_t ;
struct mps_softc {int max_devices; TYPE_1__* mapping_table; } ;
struct TYPE_5__ {int Bus; int TargetID; int DevHandle; } ;
typedef TYPE_2__ mps_btdh_mapping_t ;
struct TYPE_4__ {int dev_handle; } ;


 int EINVAL ;
 scalar_t__ FALSE ;
 int MPS_FAULT ;
 scalar_t__ TRUE ;
 int mps_dprint (struct mps_softc*,int ,char*) ;
 int mps_mapping_get_tid_from_handle (struct mps_softc*,int) ;

__attribute__((used)) static int
mps_user_btdh(struct mps_softc *sc, mps_btdh_mapping_t *data)
{
 uint8_t bt2dh = FALSE;
 uint8_t dh2bt = FALSE;
 uint16_t dev_handle, bus, target;

 bus = data->Bus;
 target = data->TargetID;
 dev_handle = data->DevHandle;







 if ((bus == 0xFFFF) && (target == 0xFFFF) && (dev_handle != 0xFFFF))
  dh2bt = TRUE;
 if ((dev_handle == 0xFFFF) && (bus != 0xFFFF) && (target != 0xFFFF))
  bt2dh = TRUE;
 if (!dh2bt && !bt2dh)
  return (EINVAL);




 if (bt2dh) {
  if (bus != 0)
   return (EINVAL);

  if (target > sc->max_devices) {
   mps_dprint(sc, MPS_FAULT, "Target ID is out of range "
      "for Bus/Target to DevHandle mapping.");
   return (EINVAL);
  }
  dev_handle = sc->mapping_table[target].dev_handle;
  if (dev_handle)
   data->DevHandle = dev_handle;
 } else {
  bus = 0;
  target = mps_mapping_get_tid_from_handle(sc, dev_handle);
  data->Bus = bus;
  data->TargetID = target;
 }

 return (0);
}
