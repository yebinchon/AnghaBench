
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int OFW_ENTER (int ) ;
 int * ofw_def_impl ;
 int ofw_obj ;

void
OF_enter()
{

 if (ofw_def_impl == ((void*)0))
  return;

 OFW_ENTER(ofw_obj);
}
