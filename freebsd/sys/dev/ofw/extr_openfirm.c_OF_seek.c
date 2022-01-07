
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int ihandle_t ;


 int OFW_SEEK (int ,int ,int ) ;
 int * ofw_def_impl ;
 int ofw_obj ;

int
OF_seek(ihandle_t instance, uint64_t pos)
{

 if (ofw_def_impl == ((void*)0))
  return (-1);

 return (OFW_SEEK(ofw_obj, instance, pos));
}
