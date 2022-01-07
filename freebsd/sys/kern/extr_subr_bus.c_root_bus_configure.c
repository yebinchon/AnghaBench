
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int BUS_PASS_DEFAULT ;
 int PDEBUG (char*) ;
 int bus_set_pass (int ) ;

void
root_bus_configure(void)
{

 PDEBUG(("."));


 bus_set_pass(BUS_PASS_DEFAULT);
}
