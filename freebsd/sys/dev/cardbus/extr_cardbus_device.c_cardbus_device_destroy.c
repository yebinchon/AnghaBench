
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cardbus_devinfo {scalar_t__ sc_cisdev; } ;


 int destroy_dev (scalar_t__) ;

int
cardbus_device_destroy(struct cardbus_devinfo *devi)
{
 if (devi->sc_cisdev)
  destroy_dev(devi->sc_cisdev);
 return (0);
}
