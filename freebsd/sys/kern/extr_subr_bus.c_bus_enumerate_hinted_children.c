
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int device_t ;


 int BUS_HINTED_CHILD (int ,char const*,int) ;
 char* device_get_name (int ) ;
 char* device_get_nameunit (int ) ;
 scalar_t__ resource_find_match (int*,char const**,int*,char*,char const*) ;

void
bus_enumerate_hinted_children(device_t bus)
{
 int i;
 const char *dname, *busname;
 int dunit;




 busname = device_get_nameunit(bus);
 i = 0;
 while (resource_find_match(&i, &dname, &dunit, "at", busname) == 0)
  BUS_HINTED_CHILD(bus, dname, dunit);




 busname = device_get_name(bus);
 i = 0;
 while (resource_find_match(&i, &dname, &dunit, "at", busname) == 0)
  BUS_HINTED_CHILD(bus, dname, dunit);
}
