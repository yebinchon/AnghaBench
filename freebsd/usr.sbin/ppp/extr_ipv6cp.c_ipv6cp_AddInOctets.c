
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ipv6cp {int throughput; } ;


 int throughput_addin (int *,int) ;

void
ipv6cp_AddInOctets(struct ipv6cp *ipv6cp, int n)
{
  throughput_addin(&ipv6cp->throughput, n);
}
