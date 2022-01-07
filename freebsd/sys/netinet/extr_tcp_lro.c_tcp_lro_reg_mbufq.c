
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int atomic_fetchadd_long (int *,int) ;
 int tcplro_stacks_wanting_mbufq ;

void
tcp_lro_reg_mbufq(void)
{
 atomic_fetchadd_long(&tcplro_stacks_wanting_mbufq, 1);
}
