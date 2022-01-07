
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int phandle_t ;
typedef int device_t ;


 int ENXIO ;
 scalar_t__ OF_getencprop (int ,char const*,int*,size_t) ;
 int OF_hasprop (int ,char const*) ;
 int device_printf (int ,char*,char const*) ;

__attribute__((used)) static int
axgbe_get_optional_prop(device_t dev, phandle_t node, const char *name,
    int *data, size_t len)
{

 if (!OF_hasprop(node, name))
  return (-1);

 if (OF_getencprop(node, name, data, len) <= 0) {
  device_printf(dev,"%s property is invalid\n", name);
  return (ENXIO);
 }

 return (0);
}
