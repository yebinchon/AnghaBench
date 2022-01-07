
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int LIST_INIT (int *) ;
 int V_if_cloners ;

void
vnet_if_clone_init(void)
{

 LIST_INIT(&V_if_cloners);
}
