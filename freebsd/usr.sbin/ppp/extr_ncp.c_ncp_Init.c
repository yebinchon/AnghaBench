
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_6__ ;
typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int u_short ;
struct TYPE_8__ {int * port; scalar_t__ maxports; scalar_t__ nports; } ;
struct TYPE_7__ {int nports; int maxports; int * port; } ;
struct TYPE_9__ {int tos; TYPE_2__ udp; TYPE_1__ tcp; } ;
struct TYPE_10__ {TYPE_3__ urgent; } ;
struct ncp {int ipv6cp; int ipcp; int mp; TYPE_4__ cfg; int * route; int afq; } ;
struct bundle {int fsm; TYPE_6__* links; } ;
struct TYPE_12__ {TYPE_5__* physical; } ;
struct TYPE_11__ {int link; } ;


 int AF_INET ;
 int LogERROR ;
 int NDEFTCPPORTS ;
 int default_urgent_tcp_ports ;
 int ipcp_Init (int *,struct bundle*,int *,int *) ;
 int ipv6cp_Init (int *,struct bundle*,int *,int *) ;
 int log_Printf (int ,char*) ;
 scalar_t__ malloc (int) ;
 int memcpy (int *,int ,int) ;
 int mp_Init (int *,struct bundle*) ;

void
ncp_Init(struct ncp *ncp, struct bundle *bundle)
{
  ncp->afq = AF_INET;
  ncp->route = ((void*)0);

  ncp->cfg.urgent.tcp.port = (u_short *)malloc(NDEFTCPPORTS * sizeof(u_short));
  if (ncp->cfg.urgent.tcp.port == ((void*)0)) {
    log_Printf(LogERROR, "ncp_Init: Out of memory allocating urgent ports\n");
    ncp->cfg.urgent.tcp.nports = ncp->cfg.urgent.tcp.maxports = 0;
  } else {
    ncp->cfg.urgent.tcp.nports = ncp->cfg.urgent.tcp.maxports = NDEFTCPPORTS;
    memcpy(ncp->cfg.urgent.tcp.port, default_urgent_tcp_ports,
    NDEFTCPPORTS * sizeof(u_short));
  }
  ncp->cfg.urgent.tos = 1;

  ncp->cfg.urgent.udp.nports = ncp->cfg.urgent.udp.maxports = 0;
  ncp->cfg.urgent.udp.port = ((void*)0);

  mp_Init(&ncp->mp, bundle);


  ipcp_Init(&ncp->ipcp, bundle, &bundle->links->physical->link,
            &bundle->fsm);

  ipv6cp_Init(&ncp->ipv6cp, bundle, &bundle->links->physical->link,
              &bundle->fsm);

}
