
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_24__ TYPE_9__ ;
typedef struct TYPE_23__ TYPE_8__ ;
typedef struct TYPE_22__ TYPE_7__ ;
typedef struct TYPE_21__ TYPE_6__ ;
typedef struct TYPE_20__ TYPE_5__ ;
typedef struct TYPE_19__ TYPE_4__ ;
typedef struct TYPE_18__ TYPE_3__ ;
typedef struct TYPE_17__ TYPE_2__ ;
typedef struct TYPE_16__ TYPE_1__ ;
typedef struct TYPE_15__ TYPE_12__ ;
typedef struct TYPE_14__ TYPE_11__ ;
typedef struct TYPE_13__ TYPE_10__ ;


typedef scalar_t__ u_int32_t ;
struct ncpaddr {int dummy; } ;
struct TYPE_13__ {TYPE_12__* dns; } ;
struct TYPE_23__ {int slots; scalar_t__ slotcomp; int neg; } ;
struct in_addr {int dummy; } ;
struct TYPE_17__ {scalar_t__ s_addr; } ;
struct TYPE_14__ {TYPE_10__ ns; TYPE_8__ vj; int my_range; struct in_addr TriggerAddress; scalar_t__ HaveTriggerAddress; int peer_range; int peer_list; TYPE_2__ netmask; } ;
struct TYPE_24__ {int dns; } ;
struct TYPE_22__ {int cslc; } ;
struct TYPE_21__ {TYPE_5__* bundle; scalar_t__ open_mode; } ;
struct TYPE_16__ {scalar_t__ s_addr; } ;
struct ipcp {TYPE_11__ cfg; TYPE_9__ ns; scalar_t__ my_reject; scalar_t__ peer_reject; TYPE_7__ vj; scalar_t__ my_compproto; TYPE_6__ fsm; struct in_addr my_ip; scalar_t__ peer_compproto; struct in_addr peer_ip; scalar_t__ peer_req; scalar_t__ heis1172; TYPE_1__ ifmask; } ;
struct iface {unsigned int addrs; TYPE_3__* addr; } ;
struct TYPE_19__ {scalar_t__ vj; scalar_t__ valid; } ;
struct TYPE_20__ {TYPE_4__ radius; struct iface* iface; } ;
struct TYPE_18__ {int ifa; struct ncpaddr peer; } ;
struct TYPE_15__ {scalar_t__ s_addr; } ;


 scalar_t__ INADDR_NONE ;
 scalar_t__ IsEnabled (int ) ;
 int LogIPCP ;
 int PROTO_VJCOMP ;
 int inet_ntoa (struct in_addr) ;
 int iplist_ip2pos (int *,struct in_addr) ;
 scalar_t__ iplist_isvalid (int *) ;
 int iplist_setcurpos (int *,int) ;
 int iplist_setrandpos (int *) ;
 int log_Printf (int ,char*,int ) ;
 int memcpy (int ,TYPE_12__*,int) ;
 int ncpaddr_getip4 (struct ncpaddr*,struct in_addr*) ;
 int ncpaddr_setip4 (struct ncpaddr*,int ) ;
 scalar_t__ ncprange_contains (int *,struct ncpaddr*) ;
 int ncprange_getaddr (int *,struct ncpaddr*) ;
 int ncprange_getip4addr (int *,struct in_addr*) ;
 int ncprange_sethost (int *,struct ncpaddr*) ;
 int sl_compress_init (int *,int) ;

void
ipcp_Setup(struct ipcp *ipcp, u_int32_t mask)
{
  struct iface *iface = ipcp->fsm.bundle->iface;
  struct ncpaddr ipaddr;
  struct in_addr peer;
  int pos;
  unsigned n;

  ipcp->fsm.open_mode = 0;
  ipcp->ifmask.s_addr = mask == INADDR_NONE ? ipcp->cfg.netmask.s_addr : mask;

  if (iplist_isvalid(&ipcp->cfg.peer_list)) {

    for (n = 0; n < iface->addrs; n++) {
      if (!ncpaddr_getip4(&iface->addr[n].peer, &peer))
        continue;
      if ((pos = iplist_ip2pos(&ipcp->cfg.peer_list, peer)) != -1) {
        ncpaddr_setip4(&ipaddr, iplist_setcurpos(&ipcp->cfg.peer_list, pos));
        break;
      }
    }
    if (n == iface->addrs)

      ncpaddr_setip4(&ipaddr, iplist_setrandpos(&ipcp->cfg.peer_list));

    ncprange_sethost(&ipcp->cfg.peer_range, &ipaddr);
  }

  ipcp->heis1172 = 0;
  ipcp->peer_req = 0;
  ncprange_getip4addr(&ipcp->cfg.peer_range, &ipcp->peer_ip);
  ipcp->peer_compproto = 0;

  if (ipcp->cfg.HaveTriggerAddress) {





    ipcp->my_ip = ipcp->cfg.TriggerAddress;
    log_Printf(LogIPCP, "Using trigger address %s\n",
              inet_ntoa(ipcp->cfg.TriggerAddress));
  } else {






    for (n = 0; n < iface->addrs; n++) {
      ncprange_getaddr(&iface->addr[n].ifa, &ipaddr);
      if (ncprange_contains(&ipcp->cfg.my_range, &ipaddr)) {
        ncpaddr_getip4(&ipaddr, &ipcp->my_ip);
        break;
      }
    }
    if (n == iface->addrs)
      ncprange_getip4addr(&ipcp->cfg.my_range, &ipcp->my_ip);
  }

  if (IsEnabled(ipcp->cfg.vj.neg)

      || (ipcp->fsm.bundle->radius.valid && ipcp->fsm.bundle->radius.vj)

     )
    ipcp->my_compproto = (PROTO_VJCOMP << 16) +
                         ((ipcp->cfg.vj.slots - 1) << 8) +
                         ipcp->cfg.vj.slotcomp;
  else
    ipcp->my_compproto = 0;
  sl_compress_init(&ipcp->vj.cslc, ipcp->cfg.vj.slots - 1);

  ipcp->peer_reject = 0;
  ipcp->my_reject = 0;


  if (ipcp->cfg.ns.dns[0].s_addr != INADDR_NONE)
    memcpy(ipcp->ns.dns, ipcp->cfg.ns.dns, sizeof ipcp->ns.dns);
}
