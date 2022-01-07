
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int driver_t ;
typedef int device_t ;


 int BUS_ADD_CHILD (int ,int ,char*,int) ;
 int * device_find_child (int ,char*,int) ;

__attribute__((used)) static void
ip17x_identify(driver_t *driver, device_t parent)
{
 if (device_find_child(parent, "ip17x", -1) == ((void*)0))
     BUS_ADD_CHILD(parent, 0, "ip17x", -1);
}
