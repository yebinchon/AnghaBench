
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int phandle_t ;


 int OFW_SETPROP (int ,int ,char const*,void const*,size_t) ;
 int * ofw_def_impl ;
 int ofw_obj ;

int
OF_setprop(phandle_t package, const char *propname, const void *buf, size_t len)
{

 if (ofw_def_impl == ((void*)0))
  return (-1);

 return (OFW_SETPROP(ofw_obj, package, propname, buf,len));
}
