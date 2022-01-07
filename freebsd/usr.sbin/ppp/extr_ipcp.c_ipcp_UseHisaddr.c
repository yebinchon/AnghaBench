
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct ncpaddr {int dummy; } ;
struct in_addr {scalar_t__ s_addr; } ;
struct TYPE_7__ {char const* src; } ;
struct TYPE_6__ {int peer_range; int my_range; TYPE_2__ peer_list; } ;
struct ipcp {struct in_addr peer_ip; TYPE_1__ cfg; int my_ip; } ;
struct ncp {struct ipcp ipcp; } ;
struct bundle {struct ncp ncp; } ;


 scalar_t__ AF_INET ;
 struct in_addr ChooseHisAddr (struct bundle*,int ) ;
 scalar_t__ INADDR_ANY ;
 int LogWARN ;
 int bundle_AdjustFilters (struct bundle*,int *,struct ncpaddr*) ;
 int ipcp_SetIPaddress (struct ipcp*,struct in_addr,struct in_addr) ;
 scalar_t__ iplist_isvalid (TYPE_2__*) ;
 int iplist_reset (TYPE_2__*) ;
 int iplist_setrandpos (TYPE_2__*) ;
 int iplist_setsrc (TYPE_2__*,char const*) ;
 int log_Printf (int ,char*,char const*) ;
 int memset (int *,char,int) ;
 int ncpaddr_setip4 (struct ncpaddr*,struct in_addr) ;
 scalar_t__ ncprange_aton (int *,struct ncp*,char const*) ;
 scalar_t__ ncprange_family (int *) ;
 int ncprange_getip4addr (int *,struct in_addr*) ;
 int ncprange_setip4host (int *,struct in_addr) ;
 scalar_t__ strpbrk (char const*,char*) ;

int
ipcp_UseHisaddr(struct bundle *bundle, const char *hisaddr, int setaddr)
{
  struct in_addr myaddr;
  struct ncp *ncp = &bundle->ncp;
  struct ipcp *ipcp = &ncp->ipcp;
  struct ncpaddr ncpaddr;


  memset(&ipcp->cfg.peer_range, '\0', sizeof ipcp->cfg.peer_range);
  iplist_reset(&ipcp->cfg.peer_list);
  if (strpbrk(hisaddr, ",-")) {
    iplist_setsrc(&ipcp->cfg.peer_list, hisaddr);
    if (iplist_isvalid(&ipcp->cfg.peer_list)) {
      iplist_setrandpos(&ipcp->cfg.peer_list);
      ipcp->peer_ip = ChooseHisAddr(bundle, ipcp->my_ip);
      if (ipcp->peer_ip.s_addr == INADDR_ANY) {
        log_Printf(LogWARN, "%s: None available !\n", ipcp->cfg.peer_list.src);
        return 0;
      }
      ncprange_setip4host(&ipcp->cfg.peer_range, ipcp->peer_ip);
    } else {
      log_Printf(LogWARN, "%s: Invalid range !\n", hisaddr);
      return 0;
    }
  } else if (ncprange_aton(&ipcp->cfg.peer_range, ncp, hisaddr) != 0) {
    if (ncprange_family(&ipcp->cfg.my_range) != AF_INET) {
      log_Printf(LogWARN, "%s: Not an AF_INET address !\n", hisaddr);
      return 0;
    }
    ncprange_getip4addr(&ipcp->cfg.my_range, &myaddr);
    ncprange_getip4addr(&ipcp->cfg.peer_range, &ipcp->peer_ip);

    if (setaddr && !ipcp_SetIPaddress(ipcp, myaddr, ipcp->peer_ip))
      return 0;
  } else
    return 0;

  ncpaddr_setip4(&ncpaddr, ipcp->peer_ip);
  bundle_AdjustFilters(bundle, ((void*)0), &ncpaddr);

  return 1;
}
