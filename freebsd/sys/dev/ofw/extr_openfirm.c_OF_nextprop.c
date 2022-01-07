
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int phandle_t ;


 int OFW_NEXTPROP (int ,int ,char const*,char*,size_t) ;
 int * ofw_def_impl ;
 int ofw_obj ;

int
OF_nextprop(phandle_t package, const char *previous, char *buf, size_t size)
{

 if (ofw_def_impl == ((void*)0))
  return (-1);

 return (OFW_NEXTPROP(ofw_obj, package, previous, buf, size));
}
