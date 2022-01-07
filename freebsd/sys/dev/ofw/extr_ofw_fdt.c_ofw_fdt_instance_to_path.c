
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ssize_t ;
typedef int phandle_t ;
typedef int ofw_t ;
typedef int ihandle_t ;


 int OF_instance_to_package (int ) ;
 int OF_package_to_path (int,char*,size_t) ;

__attribute__((used)) static ssize_t
ofw_fdt_instance_to_path(ofw_t ofw, ihandle_t instance, char *buf, size_t len)
{
 phandle_t phandle;

 phandle = OF_instance_to_package(instance);
 if (phandle == -1)
  return (-1);

 return (OF_package_to_path(phandle, buf, len));
}
