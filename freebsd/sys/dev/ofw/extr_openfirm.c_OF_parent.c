
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int phandle_t ;


 int OFW_PARENT (int ,int ) ;
 int * ofw_def_impl ;
 int ofw_obj ;

phandle_t
OF_parent(phandle_t node)
{

 if (ofw_def_impl == ((void*)0))
  return (0);

 return (OFW_PARENT(ofw_obj, node));
}
