
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int driver_t ;
typedef int device_t ;


 int BUS_ADD_CHILD (int ,int ,int ,int ) ;
 int INT_MAX ;
 int SC_DRIVER_NAME ;

__attribute__((used)) static void
sc_identify(driver_t *driver, device_t parent)
{





 BUS_ADD_CHILD(parent, INT_MAX, SC_DRIVER_NAME, 0);
}
