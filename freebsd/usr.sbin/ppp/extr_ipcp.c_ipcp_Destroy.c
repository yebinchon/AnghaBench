
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * resolv_nons; int * resolv; } ;
struct ipcp {TYPE_1__ ns; int throughput; } ;


 int free (int *) ;
 int throughput_destroy (int *) ;

void
ipcp_Destroy(struct ipcp *ipcp)
{
  throughput_destroy(&ipcp->throughput);

  if (ipcp->ns.resolv != ((void*)0)) {
    free(ipcp->ns.resolv);
    ipcp->ns.resolv = ((void*)0);
  }
  if (ipcp->ns.resolv_nons != ((void*)0)) {
    free(ipcp->ns.resolv_nons);
    ipcp->ns.resolv_nons = ((void*)0);
  }
}
