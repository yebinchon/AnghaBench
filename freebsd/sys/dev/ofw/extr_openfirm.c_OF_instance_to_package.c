
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int phandle_t ;
typedef int ihandle_t ;


 int OFW_INSTANCE_TO_PACKAGE (int ,int ) ;
 int * ofw_def_impl ;
 int ofw_obj ;

phandle_t
OF_instance_to_package(ihandle_t instance)
{

 if (ofw_def_impl == ((void*)0))
  return (-1);

 return (OFW_INSTANCE_TO_PACKAGE(ofw_obj, instance));
}
