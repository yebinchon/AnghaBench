
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int dev; scalar_t__* diskdev; } ;
typedef TYPE_1__ ips_softc_t ;


 int IPS_MAX_NUM_DRIVES ;
 int bus_generic_detach (int ) ;
 int device_delete_child (int ,scalar_t__) ;

__attribute__((used)) static int ips_diskdev_free(ips_softc_t *sc)
{
 int i;
 int error = 0;
 for(i = 0; i < IPS_MAX_NUM_DRIVES; i++){
  if(sc->diskdev[i]) {
   error = device_delete_child(sc->dev, sc->diskdev[i]);
   if(error)
    return error;
  }
 }
 bus_generic_detach(sc->dev);
 return 0;
}
