
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int device_t ;


 int bus_generic_attach (int ) ;
 char* device_get_nameunit (int ) ;
 int fdc_add_child (int ,char const*,int) ;
 scalar_t__ resource_find_match (int*,char const**,int*,char*,char const*) ;
 int resource_int_value (char const*,int,char*,int*) ;

int
fdc_hints_probe(device_t dev)
{
 const char *name, *dname;
 int i, error, dunit;





 name = device_get_nameunit(dev);
 i = 0;
 while ((resource_find_match(&i, &dname, &dunit, "at", name)) == 0) {
  resource_int_value(dname, dunit, "drive", &dunit);
  fdc_add_child(dev, dname, dunit);
 }

 if ((error = bus_generic_attach(dev)) != 0)
  return (error);
 return (0);
}
