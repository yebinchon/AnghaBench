
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ssize_t ;
typedef int phandle_t ;


 int OFW_GETPROPLEN (int ,int ,char const*) ;
 int * ofw_def_impl ;
 int ofw_obj ;

ssize_t
OF_getproplen(phandle_t package, const char *propname)
{

 if (ofw_def_impl == ((void*)0))
  return (-1);

 return (OFW_GETPROPLEN(ofw_obj, package, propname));
}
