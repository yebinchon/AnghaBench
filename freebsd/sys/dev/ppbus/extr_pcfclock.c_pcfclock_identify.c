
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int driver_t ;
typedef int device_t ;


 int BUS_ADD_CHILD (int ,int ,int ,int) ;
 int PCFCLOCK_NAME ;
 int device_find_child (int ,int ,int) ;

__attribute__((used)) static void
pcfclock_identify(driver_t *driver, device_t parent)
{

 device_t dev;

 dev = device_find_child(parent, PCFCLOCK_NAME, -1);
 if (!dev)
  BUS_ADD_CHILD(parent, 0, PCFCLOCK_NAME, -1);
}
