
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bridge_if {int dummy; } ;


 scalar_t__ bridge_get_conf_param (struct bridge_if*) ;
 int bridge_get_op_param (struct bridge_if*) ;

int
bridge_getinfo_bif(struct bridge_if *bif)
{
 if (bridge_get_conf_param(bif) < 0)
  return (-1);

 return (bridge_get_op_param(bif));
}
