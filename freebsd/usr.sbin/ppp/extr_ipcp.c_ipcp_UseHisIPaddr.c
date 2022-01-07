
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int my_range; int peer_range; int peer_list; } ;
struct in_addr {int dummy; } ;
struct ipcp {TYPE_2__ cfg; struct in_addr peer_ip; } ;
struct TYPE_3__ {struct ipcp ipcp; } ;
struct bundle {TYPE_1__ ncp; } ;


 int ipcp_SetIPaddress (struct ipcp*,struct in_addr,struct in_addr) ;
 int iplist_reset (int *) ;
 int memset (int *,char,int) ;
 int ncprange_getip4addr (int *,struct in_addr*) ;
 int ncprange_setip4host (int *,struct in_addr) ;

int
ipcp_UseHisIPaddr(struct bundle *bundle, struct in_addr hisaddr)
{
  struct ipcp *ipcp = &bundle->ncp.ipcp;
  struct in_addr myaddr;

  memset(&ipcp->cfg.peer_range, '\0', sizeof ipcp->cfg.peer_range);
  iplist_reset(&ipcp->cfg.peer_list);
  ipcp->peer_ip = hisaddr;
  ncprange_setip4host(&ipcp->cfg.peer_range, hisaddr);
  ncprange_getip4addr(&ipcp->cfg.my_range, &myaddr);

  return ipcp_SetIPaddress(ipcp, myaddr, hisaddr);
}
