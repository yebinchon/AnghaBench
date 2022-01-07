
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct sockaddr_storage {int dummy; } ;
struct sockaddr {int dummy; } ;
struct ncprange {int dummy; } ;
struct ncpaddr {int dummy; } ;
struct TYPE_10__ {int s_addr; } ;
struct TYPE_7__ {struct bundle* bundle; } ;
struct ipcp {TYPE_4__ ifmask; TYPE_1__ fsm; } ;
struct in_addr {int s_addr; } ;
struct TYPE_9__ {int routes; scalar_t__ valid; } ;
struct TYPE_8__ {scalar_t__ sendpipe; scalar_t__ recvpipe; } ;
struct TYPE_11__ {int route; TYPE_2__ cfg; } ;
struct bundle {TYPE_3__ radius; TYPE_5__ ncp; int iface; } ;


 int AF_INET ;
 scalar_t__ Enabled (struct bundle*,int ) ;
 int IFACE_ADD_FIRST ;
 int IFACE_CLEAR_ALIASES ;
 int IFACE_FORCE_ADD ;
 int IFACE_SYSTEM ;
 int INADDR_ANY ;
 int OPT_IFACEALIAS ;
 int OPT_SROUTES ;
 struct in_addr addr2mask (struct in_addr) ;
 int iface_Add (int ,TYPE_5__*,struct ncprange*,struct ncpaddr*,int) ;
 int iface_Clear (int ,TYPE_5__*,int ,int) ;
 int ncpaddr_getsa (struct ncpaddr*,struct sockaddr_storage*) ;
 int ncpaddr_setip4 (struct ncpaddr*,struct in_addr) ;
 int ncprange_getsa (struct ncprange*,struct sockaddr_storage*,struct sockaddr_storage*) ;
 int ncprange_sethost (struct ncprange*,struct ncpaddr*) ;
 int ncprange_setip4mask (struct ncprange*,TYPE_4__) ;
 int route_Change (struct bundle*,int ,struct ncpaddr*,struct ncpaddr*) ;
 int rt_Update (struct bundle*,struct sockaddr*,struct sockaddr*,struct sockaddr*,int *,int *) ;

__attribute__((used)) static int
ipcp_SetIPaddress(struct ipcp *ipcp, struct in_addr myaddr,
                  struct in_addr hisaddr)
{
  struct bundle *bundle = ipcp->fsm.bundle;
  struct ncpaddr myncpaddr, hisncpaddr;
  struct ncprange myrange;
  struct in_addr mask;
  struct sockaddr_storage ssdst, ssgw, ssmask;
  struct sockaddr *sadst, *sagw, *samask;

  sadst = (struct sockaddr *)&ssdst;
  sagw = (struct sockaddr *)&ssgw;
  samask = (struct sockaddr *)&ssmask;

  ncpaddr_setip4(&hisncpaddr, hisaddr);
  ncpaddr_setip4(&myncpaddr, myaddr);
  ncprange_sethost(&myrange, &myncpaddr);

  mask = addr2mask(myaddr);

  if (ipcp->ifmask.s_addr != INADDR_ANY &&
      (ipcp->ifmask.s_addr & mask.s_addr) == mask.s_addr)
    ncprange_setip4mask(&myrange, ipcp->ifmask);

  if (!iface_Add(bundle->iface, &bundle->ncp, &myrange, &hisncpaddr,
                 IFACE_ADD_FIRST|IFACE_FORCE_ADD|IFACE_SYSTEM))
    return 0;

  if (!Enabled(bundle, OPT_IFACEALIAS))
    iface_Clear(bundle->iface, &bundle->ncp, AF_INET,
                IFACE_CLEAR_ALIASES|IFACE_SYSTEM);

  if (bundle->ncp.cfg.sendpipe > 0 || bundle->ncp.cfg.recvpipe > 0) {
    ncprange_getsa(&myrange, &ssgw, &ssmask);
    ncpaddr_getsa(&hisncpaddr, &ssdst);
    rt_Update(bundle, sadst, sagw, samask, ((void*)0), ((void*)0));
  }

  if (Enabled(bundle, OPT_SROUTES))
    route_Change(bundle, bundle->ncp.route, &myncpaddr, &hisncpaddr);


  if (bundle->radius.valid)
    route_Change(bundle, bundle->radius.routes, &myncpaddr, &hisncpaddr);


  return 1;
}
