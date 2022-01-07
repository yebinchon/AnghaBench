
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int driver_t ;
typedef int device_t ;


 int BUS_ADD_CHILD (int ,int ,char*,int) ;
 int resource_int_value (char*,int,char*,int*) ;

__attribute__((used)) static void
nvram2env_identify(driver_t * drv, device_t parent)
{
 int i, ivar;

 for (i = 0; !resource_int_value("nvram", i, "base", &ivar); i++)
  BUS_ADD_CHILD(parent, 0, "nvram2env", i);
}
