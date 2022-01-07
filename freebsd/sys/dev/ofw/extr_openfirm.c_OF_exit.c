
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int OFW_EXIT (int ) ;
 int * ofw_def_impl ;
 int ofw_obj ;
 int panic (char*) ;

void
OF_exit()
{

 if (ofw_def_impl == ((void*)0))
  panic("OF_exit: Open Firmware not available");


 OFW_EXIT(ofw_obj);

 for (;;)
  ;
}
