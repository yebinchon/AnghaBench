
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int state; int ipsd_disk; } ;
typedef TYPE_1__ ipsdisk_softc_t ;
typedef int device_t ;


 int DEVICE_PRINTF (int,int ,char*) ;
 int EBUSY ;
 int IPS_DEV_OPEN ;
 scalar_t__ device_get_softc (int ) ;
 int disk_destroy (int ) ;

__attribute__((used)) static int ipsd_detach(device_t dev)
{
 ipsdisk_softc_t *dsc;

 DEVICE_PRINTF(2, dev,"in detach\n");
 dsc = (ipsdisk_softc_t *)device_get_softc(dev);
 if(dsc->state & IPS_DEV_OPEN)
  return (EBUSY);
 disk_destroy(dsc->ipsd_disk);
 return 0;
}
