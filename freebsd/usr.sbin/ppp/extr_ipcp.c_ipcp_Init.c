
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_7__ ;
typedef struct TYPE_13__ TYPE_6__ ;
typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct link {int dummy; } ;
struct TYPE_14__ {int writable; int * resolv_nons; int * resolv; } ;
struct TYPE_12__ {int slotcomp; int neg; int slots; } ;
struct TYPE_11__ {void* maxtrm; void* maxreq; int timeout; } ;
struct TYPE_10__ {TYPE_2__* nbns; scalar_t__ dns_neg; TYPE_1__* dns; } ;
struct in_addr {void* s_addr; } ;
struct TYPE_13__ {TYPE_5__ vj; TYPE_4__ fsm; TYPE_3__ ns; scalar_t__ HaveTriggerAddress; int peer_list; struct in_addr netmask; int peer_range; int my_range; } ;
struct ipcp {int * Queue; int throughput; TYPE_7__ ns; int vj; TYPE_6__ cfg; int fsm; } ;
struct hostent {scalar_t__ h_addrtype; int h_length; int h_addr; } ;
struct fsm_parent {int dummy; } ;
struct bundle {int dummy; } ;
struct TYPE_9__ {void* s_addr; } ;
struct TYPE_8__ {void* s_addr; } ;


 scalar_t__ AF_INET ;
 int DEF_FSMRETRY ;
 void* DEF_FSMTRIES ;
 int DEF_VJ_STATES ;
 void* INADDR_ANY ;
 int INADDR_LOOPBACK ;
 void* INADDR_NONE ;
 int IPCP_MAXCODE ;
 int LogIPCP ;
 int MAXHOSTNAMELEN ;
 int NEG_ACCEPTED ;
 int NEG_ENABLED ;
 int PROTO_IPCP ;
 int SAMPLE_PERIOD ;
 int fsm_Init (int *,char*,int ,int,int ,int ,struct bundle*,struct link*,struct fsm_parent const*,int *,char const* const*) ;
 struct hostent* gethostbyname (char*) ;
 scalar_t__ gethostname (char*,int) ;
 void* htonl (int ) ;
 int ipcp_Callbacks ;
 int ipcp_LoadDNS (struct ipcp*) ;
 int ipcp_Setup (struct ipcp*,void*) ;
 int iplist_setsrc (int *,char*) ;
 int memcpy (void**,int ,int) ;
 int memset (int *,char,int) ;
 int ncprange_setip4 (int *,struct in_addr,struct in_addr) ;
 int throughput_init (int *,int ) ;

void
ipcp_Init(struct ipcp *ipcp, struct bundle *bundle, struct link *l,
          const struct fsm_parent *parent)
{
  struct hostent *hp;
  struct in_addr host;
  char name[MAXHOSTNAMELEN];
  static const char * const timer_names[] =
    {"IPCP restart", "IPCP openmode", "IPCP stopped"};

  fsm_Init(&ipcp->fsm, "IPCP", PROTO_IPCP, 1, IPCP_MAXCODE, LogIPCP,
           bundle, l, parent, &ipcp_Callbacks, timer_names);

  ipcp->cfg.vj.slots = DEF_VJ_STATES;
  ipcp->cfg.vj.slotcomp = 1;
  memset(&ipcp->cfg.my_range, '\0', sizeof ipcp->cfg.my_range);

  host.s_addr = htonl(INADDR_LOOPBACK);
  ipcp->cfg.netmask.s_addr = INADDR_ANY;
  if (gethostname(name, sizeof name) == 0) {
    hp = gethostbyname(name);
    if (hp && hp->h_addrtype == AF_INET && hp->h_length == sizeof host.s_addr)
      memcpy(&host.s_addr, hp->h_addr, sizeof host.s_addr);
  }
  ncprange_setip4(&ipcp->cfg.my_range, host, ipcp->cfg.netmask);
  ncprange_setip4(&ipcp->cfg.peer_range, ipcp->cfg.netmask, ipcp->cfg.netmask);

  iplist_setsrc(&ipcp->cfg.peer_list, "");
  ipcp->cfg.HaveTriggerAddress = 0;

  ipcp->cfg.ns.dns[0].s_addr = INADDR_NONE;
  ipcp->cfg.ns.dns[1].s_addr = INADDR_NONE;
  ipcp->cfg.ns.dns_neg = 0;
  ipcp->cfg.ns.nbns[0].s_addr = INADDR_ANY;
  ipcp->cfg.ns.nbns[1].s_addr = INADDR_ANY;

  ipcp->cfg.fsm.timeout = DEF_FSMRETRY;
  ipcp->cfg.fsm.maxreq = DEF_FSMTRIES;
  ipcp->cfg.fsm.maxtrm = DEF_FSMTRIES;
  ipcp->cfg.vj.neg = NEG_ENABLED|NEG_ACCEPTED;

  memset(&ipcp->vj, '\0', sizeof ipcp->vj);

  ipcp->ns.resolv = ((void*)0);
  ipcp->ns.resolv_nons = ((void*)0);
  ipcp->ns.writable = 1;
  ipcp_LoadDNS(ipcp);

  throughput_init(&ipcp->throughput, SAMPLE_PERIOD);
  memset(ipcp->Queue, '\0', sizeof ipcp->Queue);
  ipcp_Setup(ipcp, INADDR_NONE);
}
