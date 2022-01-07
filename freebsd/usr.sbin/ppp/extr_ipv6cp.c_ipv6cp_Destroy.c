
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ipv6cp {int throughput; } ;


 int throughput_destroy (int *) ;

void
ipv6cp_Destroy(struct ipv6cp *ipv6cp)
{
  throughput_destroy(&ipv6cp->throughput);
}
