
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ihandle_t ;


 int OFW_OPEN (int ,char const*) ;
 int * ofw_def_impl ;
 int ofw_obj ;

ihandle_t
OF_open(const char *device)
{

 if (ofw_def_impl == ((void*)0))
  return (0);

 return (OFW_OPEN(ofw_obj, device));
}
