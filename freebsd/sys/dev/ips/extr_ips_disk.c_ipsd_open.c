
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct disk {TYPE_1__* d_drv1; } ;
struct TYPE_2__ {int dev; int state; } ;
typedef TYPE_1__ ipsdisk_softc_t ;


 int DEVICE_PRINTF (int,int ,char*) ;
 int IPS_DEV_OPEN ;

__attribute__((used)) static int ipsd_open(struct disk *dp)
{
 ipsdisk_softc_t *dsc = dp->d_drv1;

 dsc->state |= IPS_DEV_OPEN;
 DEVICE_PRINTF(2, dsc->dev, "I'm open\n");
        return 0;
}
