
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int * port; scalar_t__ maxports; scalar_t__ nports; } ;
struct TYPE_5__ {int * port; scalar_t__ maxports; scalar_t__ nports; } ;
struct TYPE_7__ {TYPE_2__ udp; TYPE_1__ tcp; } ;
struct TYPE_8__ {TYPE_3__ urgent; } ;
struct ncp {TYPE_4__ cfg; int ipv6cp; int ipcp; } ;


 int free (int *) ;
 int ipcp_Destroy (int *) ;
 int ipv6cp_Destroy (int *) ;

void
ncp_Destroy(struct ncp *ncp)
{
  ipcp_Destroy(&ncp->ipcp);

  ipv6cp_Destroy(&ncp->ipv6cp);


  if (ncp->cfg.urgent.tcp.maxports) {
    ncp->cfg.urgent.tcp.nports = ncp->cfg.urgent.tcp.maxports = 0;
    free(ncp->cfg.urgent.tcp.port);
    ncp->cfg.urgent.tcp.port = ((void*)0);
  }
  if (ncp->cfg.urgent.udp.maxports) {
    ncp->cfg.urgent.udp.nports = ncp->cfg.urgent.udp.maxports = 0;
    free(ncp->cfg.urgent.udp.port);
    ncp->cfg.urgent.udp.port = ((void*)0);
  }
}
