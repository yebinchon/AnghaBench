
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ssize_t ;
typedef int phandle_t ;


 int OFW_GETPROP (int ,int ,char const*,void*,size_t) ;
 int * ofw_def_impl ;
 int ofw_obj ;

ssize_t
OF_getprop(phandle_t package, const char *propname, void *buf, size_t buflen)
{

 if (ofw_def_impl == ((void*)0))
  return (-1);

 return (OFW_GETPROP(ofw_obj, package, propname, buf, buflen));
}
