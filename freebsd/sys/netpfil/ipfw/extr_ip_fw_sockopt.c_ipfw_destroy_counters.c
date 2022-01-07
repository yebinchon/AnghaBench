
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int V_ipfw_cntr_zone ;
 int uma_zdestroy (int ) ;

void
ipfw_destroy_counters()
{

 uma_zdestroy(V_ipfw_cntr_zone);
}
