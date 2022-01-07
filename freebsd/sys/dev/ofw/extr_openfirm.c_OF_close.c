
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ihandle_t ;


 int OFW_CLOSE (int ,int ) ;
 int * ofw_def_impl ;
 int ofw_obj ;

void
OF_close(ihandle_t instance)
{

 if (ofw_def_impl == ((void*)0))
  return;

 OFW_CLOSE(ofw_obj, instance);
}
