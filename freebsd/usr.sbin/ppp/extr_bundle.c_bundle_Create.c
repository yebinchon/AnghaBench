
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_42__ TYPE_9__ ;
typedef struct TYPE_41__ TYPE_8__ ;
typedef struct TYPE_40__ TYPE_7__ ;
typedef struct TYPE_39__ TYPE_6__ ;
typedef struct TYPE_38__ TYPE_5__ ;
typedef struct TYPE_37__ TYPE_4__ ;
typedef struct TYPE_36__ TYPE_3__ ;
typedef struct TYPE_35__ TYPE_2__ ;
typedef struct TYPE_34__ TYPE_21__ ;
typedef struct TYPE_33__ TYPE_20__ ;
typedef struct TYPE_32__ TYPE_1__ ;
typedef struct TYPE_31__ TYPE_19__ ;
typedef struct TYPE_30__ TYPE_18__ ;
typedef struct TYPE_29__ TYPE_17__ ;
typedef struct TYPE_28__ TYPE_16__ ;
typedef struct TYPE_27__ TYPE_15__ ;
typedef struct TYPE_26__ TYPE_14__ ;
typedef struct TYPE_25__ TYPE_13__ ;
typedef struct TYPE_24__ TYPE_12__ ;
typedef struct TYPE_23__ TYPE_11__ ;
typedef struct TYPE_22__ TYPE_10__ ;


struct TYPE_27__ {char* name; int logok; TYPE_14__* rule; } ;
struct TYPE_25__ {char* name; int logok; TYPE_12__* rule; } ;
struct TYPE_23__ {int fragok; int logok; char* name; TYPE_10__* rule; } ;
struct TYPE_42__ {int fragok; int logok; char* name; TYPE_8__* rule; } ;
struct TYPE_34__ {TYPE_15__ alive; TYPE_13__ dial; TYPE_11__ out; TYPE_9__ in; } ;
struct TYPE_30__ {TYPE_21__ timer; } ;
struct TYPE_29__ {int fd; } ;
struct TYPE_28__ {scalar_t__ done; TYPE_21__ timer; } ;
struct TYPE_40__ {int Write; int Read; int IsSet; int UpdateSet; int type; } ;
struct TYPE_31__ {char* Name; scalar_t__ fd; int header; } ;
struct TYPE_39__ {int all; scalar_t__ open; } ;
struct TYPE_37__ {int timeout; } ;
struct TYPE_36__ {char* name; char* key; } ;
struct TYPE_35__ {scalar_t__ min_timeout; int timeout; } ;
struct TYPE_38__ {unsigned long long optmask; char* label; TYPE_4__ choked; int ifqueue; TYPE_3__ auth; TYPE_2__ idle; } ;
struct TYPE_32__ {struct bundle* object; int LayerFinish; int LayerDown; int LayerUp; int LayerStart; } ;
struct bundle {int unit; int ncp; int * iface; int radius; TYPE_18__ choked; TYPE_17__ notify; TYPE_16__ idle; TYPE_21__ filter; TYPE_7__ desc; TYPE_19__ dev; int * links; scalar_t__ upat; TYPE_6__ phys_type; TYPE_5__ cfg; TYPE_1__ fsm; scalar_t__ NatEnabled; scalar_t__ CleaningUp; int phase; scalar_t__ routing_seq; scalar_t__ bandwidth; } ;
struct TYPE_41__ {void* f_action; } ;
struct TYPE_33__ {scalar_t__ ipv6_available; } ;
struct TYPE_26__ {void* f_action; } ;
struct TYPE_24__ {void* f_action; } ;
struct TYPE_22__ {void* f_action; } ;


 void* A_NONE ;
 int BUNDLE_DESCRIPTOR ;
 int CHOKED_TIMEOUT ;
 int DEF_IFQUEUE ;
 int ENOENT ;
 int ENXIO ;
 scalar_t__ ID0ioctl (scalar_t__,int ,int*) ;
 scalar_t__ ID0open (char*,int ) ;
 int IFACE_CLEAR_ALL ;
 int IFF_MULTICAST ;
 int IFF_POINTOPOINT ;
 int LOAD_VERBOSLY ;
 int LogALERT ;
 int LogERROR ;
 int LogPHASE ;
 int LogWARN ;
 int MAXFILTERS ;
 int NCP_IDLE_TIMEOUT ;
 unsigned long long OPT_IDCHECK ;
 int OPT_IPCP ;
 int OPT_IPV6CP ;
 unsigned long long OPT_LOOPBACK ;
 unsigned long long OPT_NAS_IDENTIFIER ;
 unsigned long long OPT_NAS_IP_ADDRESS ;
 unsigned long long OPT_SROUTES ;
 unsigned long long OPT_TCPMSSFIXUP ;
 unsigned long long OPT_THROUGHPUT ;
 unsigned long long OPT_UTMP ;
 int O_RDWR ;
 int PHASE_DEAD ;
 int TUNSIFHEAD ;
 int TUNSIFMODE ;
 int TUNSLMODE ;
 int bundle_DescriptorRead ;
 int bundle_DescriptorWrite ;
 int bundle_IsSet ;
 int bundle_LayerDown ;
 int bundle_LayerFinish ;
 int bundle_LayerStart ;
 int bundle_LayerUp ;
 int bundle_LockTun (struct bundle*) ;
 int bundle_UpdateSet ;
 int close (scalar_t__) ;
 int * datalink_Create (char*,struct bundle*,int) ;
 int errno ;
 int iface_Clear (int *,int *,int ,int ) ;
 int * iface_Create (char const*) ;
 int iface_Free (int *) ;
 scalar_t__ loadmodules (int ,char*,int *) ;
 int log_Printf (int ,char*,...) ;
 int log_SetTun (int,int *) ;
 int memset (TYPE_21__*,char,int) ;
 int ncp_Init (int *,struct bundle*) ;
 int opt_enable (struct bundle*,int ) ;
 TYPE_20__ probe ;
 int radius_Init (int *) ;
 int snprintf (char*,int,char*,char const*,int) ;
 char const* strerror (int) ;
 char* strrchr (char*,char) ;

struct bundle *
bundle_Create(const char *prefix, int type, int unit)
{
  static struct bundle bundle;
  int enoentcount, err, minunit, maxunit;
  const char *ifname;







  if (bundle.iface != ((void*)0)) {
    log_Printf(LogALERT, "bundle_Create:  There's only one BUNDLE !\n");
    return ((void*)0);
  }

  if (unit == -1) {
    minunit = 0;
    maxunit = -1;
  } else {
    minunit = unit;
    maxunit = unit + 1;
  }
  err = ENOENT;
  enoentcount = 0;



  for (bundle.unit = minunit; bundle.unit != maxunit; bundle.unit++) {
    snprintf(bundle.dev.Name, sizeof bundle.dev.Name, "%s%d",
             prefix, bundle.unit);
    bundle.dev.fd = ID0open(bundle.dev.Name, O_RDWR);
    if (bundle.dev.fd >= 0)
      break;
    else if (errno == ENXIO || errno == ENOENT) {
      if (errno != ENOENT || ++enoentcount > 2) {
        err = errno;
 break;
      }
    } else
      err = errno;
  }

  if (bundle.dev.fd < 0) {
    if (unit == -1)
      log_Printf(LogWARN, "No available tunnel devices found (%s)\n",
                strerror(err));
    else
      log_Printf(LogWARN, "%s%d: %s\n", prefix, unit, strerror(err));
    return ((void*)0);
  }

  log_SetTun(bundle.unit, ((void*)0));

  ifname = strrchr(bundle.dev.Name, '/');
  if (ifname == ((void*)0))
    ifname = bundle.dev.Name;
  else
    ifname++;

  bundle.iface = iface_Create(ifname);
  if (bundle.iface == ((void*)0)) {
    close(bundle.dev.fd);
    return ((void*)0);
  }
  bundle.dev.header = 0;



  log_Printf(LogPHASE, "Using interface: %s\n", ifname);

  bundle.bandwidth = 0;
  bundle.routing_seq = 0;
  bundle.phase = PHASE_DEAD;
  bundle.CleaningUp = 0;
  bundle.NatEnabled = 0;

  bundle.fsm.LayerStart = bundle_LayerStart;
  bundle.fsm.LayerUp = bundle_LayerUp;
  bundle.fsm.LayerDown = bundle_LayerDown;
  bundle.fsm.LayerFinish = bundle_LayerFinish;
  bundle.fsm.object = &bundle;

  bundle.cfg.idle.timeout = NCP_IDLE_TIMEOUT;
  bundle.cfg.idle.min_timeout = 0;
  *bundle.cfg.auth.name = '\0';
  *bundle.cfg.auth.key = '\0';
  bundle.cfg.optmask = (1ull << OPT_IDCHECK) | (1ull << OPT_LOOPBACK) |
                       (1ull << OPT_SROUTES) | (1ull << OPT_TCPMSSFIXUP) |
                       (1ull << OPT_THROUGHPUT) | (1ull << OPT_UTMP) |
                       (1ull << OPT_NAS_IP_ADDRESS) |
                       (1ull << OPT_NAS_IDENTIFIER);

  opt_enable(&bundle, OPT_IPCP);
  if (probe.ipv6_available)
    opt_enable(&bundle, OPT_IPV6CP);

  *bundle.cfg.label = '\0';
  bundle.cfg.ifqueue = DEF_IFQUEUE;
  bundle.cfg.choked.timeout = CHOKED_TIMEOUT;
  bundle.phys_type.all = type;
  bundle.phys_type.open = 0;
  bundle.upat = 0;

  bundle.links = datalink_Create("deflink", &bundle, type);
  if (bundle.links == ((void*)0)) {
    log_Printf(LogALERT, "Cannot create data link: %s\n", strerror(errno));
    iface_Free(bundle.iface);
    bundle.iface = ((void*)0);
    close(bundle.dev.fd);
    return ((void*)0);
  }

  bundle.desc.type = BUNDLE_DESCRIPTOR;
  bundle.desc.UpdateSet = bundle_UpdateSet;
  bundle.desc.IsSet = bundle_IsSet;
  bundle.desc.Read = bundle_DescriptorRead;
  bundle.desc.Write = bundle_DescriptorWrite;

  ncp_Init(&bundle.ncp, &bundle);

  memset(&bundle.filter, '\0', sizeof bundle.filter);
  bundle.filter.in.fragok = bundle.filter.in.logok = 1;
  bundle.filter.in.name = "IN";
  bundle.filter.out.fragok = bundle.filter.out.logok = 1;
  bundle.filter.out.name = "OUT";
  bundle.filter.dial.name = "DIAL";
  bundle.filter.dial.logok = 1;
  bundle.filter.alive.name = "ALIVE";
  bundle.filter.alive.logok = 1;
  {
    int i;
    for (i = 0; i < MAXFILTERS; i++) {
        bundle.filter.in.rule[i].f_action = A_NONE;
        bundle.filter.out.rule[i].f_action = A_NONE;
        bundle.filter.dial.rule[i].f_action = A_NONE;
        bundle.filter.alive.rule[i].f_action = A_NONE;
    }
  }
  memset(&bundle.idle.timer, '\0', sizeof bundle.idle.timer);
  bundle.idle.done = 0;
  bundle.notify.fd = -1;
  memset(&bundle.choked.timer, '\0', sizeof bundle.choked.timer);

  radius_Init(&bundle.radius);



  iface_Clear(bundle.iface, &bundle.ncp, 0, IFACE_CLEAR_ALL);

  bundle_LockTun(&bundle);

  return &bundle;
}
