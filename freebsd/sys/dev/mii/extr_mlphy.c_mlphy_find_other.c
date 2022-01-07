
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int mii_dev; } ;
struct mlphy_softc {scalar_t__ ml_dev; TYPE_1__ ml_mii; } ;
struct mii_softc {int dummy; } ;
typedef scalar_t__ device_t ;


 int M_TEMP ;
 scalar_t__ device_get_children (int ,scalar_t__**,int*) ;
 struct mii_softc* device_get_softc (scalar_t__) ;
 int free (scalar_t__*,int ) ;

__attribute__((used)) static struct mii_softc *
mlphy_find_other(struct mlphy_softc *msc)
{
 device_t *devlist;
 struct mii_softc *retval;
 int i, devs;

 retval = ((void*)0);
 if (device_get_children(msc->ml_mii.mii_dev, &devlist, &devs) != 0)
  return (((void*)0));
 for (i = 0; i < devs; i++) {
  if (devlist[i] != msc->ml_dev) {
   retval = device_get_softc(devlist[i]);
   break;
  }
 }
 free(devlist, M_TEMP);
 return (retval);
}
