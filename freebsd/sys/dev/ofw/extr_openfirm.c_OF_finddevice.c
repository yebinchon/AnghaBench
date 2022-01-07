
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int phandle_t ;


 int OFW_FINDDEVICE (int ,char const*) ;
 int * ofw_def_impl ;
 int ofw_obj ;

phandle_t
OF_finddevice(const char *device)
{

 if (ofw_def_impl == ((void*)0))
  return (-1);

 return (OFW_FINDDEVICE(ofw_obj, device));
}
