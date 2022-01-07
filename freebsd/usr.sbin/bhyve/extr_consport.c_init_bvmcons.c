
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int consport ;
 int register_inout (int *) ;

void
init_bvmcons(void)
{

 register_inout(&consport);
}
