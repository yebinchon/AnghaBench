
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ipfw_dyn_rule ;


 int V_dyn_count ;
 int V_dyn_parent_count ;

int
ipfw_dyn_len(void)
{

 return ((V_dyn_count + V_dyn_parent_count) * sizeof(ipfw_dyn_rule));
}
