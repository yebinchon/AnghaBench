
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ipcp {int throughput; } ;


 int throughput_addin (int *,int) ;

void
ipcp_AddInOctets(struct ipcp *ipcp, int n)
{
  throughput_addin(&ipcp->throughput, n);
}
