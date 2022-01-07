
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ssize_t ;
typedef int phandle_t ;


 int OFW_PACKAGE_TO_PATH (int ,int ,char*,size_t) ;
 int * ofw_def_impl ;
 int ofw_obj ;

ssize_t
OF_package_to_path(phandle_t package, char *buf, size_t len)
{

 if (ofw_def_impl == ((void*)0))
  return (-1);

 return (OFW_PACKAGE_TO_PATH(ofw_obj, package, buf, len));
}
