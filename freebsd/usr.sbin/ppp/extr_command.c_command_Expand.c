
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_34__ TYPE_9__ ;
typedef struct TYPE_33__ TYPE_8__ ;
typedef struct TYPE_32__ TYPE_7__ ;
typedef struct TYPE_31__ TYPE_6__ ;
typedef struct TYPE_30__ TYPE_5__ ;
typedef struct TYPE_29__ TYPE_4__ ;
typedef struct TYPE_28__ TYPE_3__ ;
typedef struct TYPE_27__ TYPE_2__ ;
typedef struct TYPE_26__ TYPE_1__ ;
typedef struct TYPE_25__ TYPE_17__ ;
typedef struct TYPE_24__ TYPE_16__ ;
typedef struct TYPE_23__ TYPE_15__ ;
typedef struct TYPE_22__ TYPE_14__ ;
typedef struct TYPE_21__ TYPE_13__ ;
typedef struct TYPE_20__ TYPE_12__ ;
typedef struct TYPE_19__ TYPE_11__ ;
typedef struct TYPE_18__ TYPE_10__ ;


struct TYPE_30__ {int len; int address; int class; } ;
struct TYPE_32__ {char* authname; TYPE_5__ enddisc; } ;
struct TYPE_26__ {int len; int address; int class; } ;
struct TYPE_27__ {TYPE_1__ enddisc; } ;
struct TYPE_33__ {TYPE_7__ peer; TYPE_2__ cfg; } ;
struct TYPE_18__ {unsigned long long OctetsIn; unsigned long long OctetsOut; unsigned long long PacketsIn; unsigned long long PacketsOut; } ;
struct TYPE_19__ {int myaddr; TYPE_10__ throughput; int hisaddr; } ;
struct TYPE_34__ {unsigned long long OctetsIn; unsigned long long OctetsOut; unsigned long long PacketsIn; unsigned long long PacketsOut; } ;
struct TYPE_23__ {int * dns; } ;
struct TYPE_22__ {int my_ip; TYPE_9__ throughput; int peer_ip; TYPE_15__ ns; } ;
struct TYPE_24__ {TYPE_8__ mp; TYPE_11__ ipv6cp; TYPE_14__ ipcp; } ;
struct TYPE_29__ {int ipv6prefix; } ;
struct TYPE_20__ {char* name; } ;
struct TYPE_21__ {TYPE_12__ auth; } ;
struct bundle {TYPE_16__ ncp; TYPE_4__ radius; TYPE_3__* iface; TYPE_13__ cfg; } ;
typedef scalar_t__ pid_t ;
struct TYPE_31__ {char* sockname; scalar_t__ port; } ;
struct TYPE_28__ {char* name; } ;
struct TYPE_25__ {TYPE_6__ cfg; } ;


 char* Version ;
 char* bundle_GetLabel (struct bundle*) ;
 int bundle_Uptime (struct bundle*) ;
 char* mp_Enddisc (int ,int ,int ) ;
 TYPE_17__ server ;
 int snprintf (char*,int,char*,int,int,int) ;
 char* strdup (char const* const) ;
 char* subst (char*,char*,char*) ;
 char* substip (char*,char*,int ) ;
 char* substipv6 (char*,char*,int *) ;
 char* substipv6prefix (char*,char*,int ) ;
 char* substlong (char*,char*,scalar_t__) ;
 char* substull (char*,char*,unsigned long long) ;

void
command_Expand(char **nargv, int argc, char const *const *oargv,
               struct bundle *bundle, int inc0, pid_t pid)
{
  int arg, secs;
  char uptime[20];
  unsigned long long oin, oout, pin, pout;

  if (inc0)
    arg = 0;
  else {
    nargv[0] = strdup(oargv[0]);
    arg = 1;
  }

  secs = bundle_Uptime(bundle);
  snprintf(uptime, sizeof uptime, "%d:%02d:%02d",
           secs / 3600, (secs / 60) % 60, secs % 60);
  oin = bundle->ncp.ipcp.throughput.OctetsIn;
  oout = bundle->ncp.ipcp.throughput.OctetsOut;
  pin = bundle->ncp.ipcp.throughput.PacketsIn;
  pout = bundle->ncp.ipcp.throughput.PacketsOut;

  oin += bundle->ncp.ipv6cp.throughput.OctetsIn;
  oout += bundle->ncp.ipv6cp.throughput.OctetsOut;
  pin += bundle->ncp.ipv6cp.throughput.PacketsIn;
  pout += bundle->ncp.ipv6cp.throughput.PacketsOut;


  for (; arg < argc; arg++) {
    nargv[arg] = strdup(oargv[arg]);
    nargv[arg] = subst(nargv[arg], "AUTHNAME", bundle->cfg.auth.name);
    nargv[arg] = substip(nargv[arg], "DNS0", bundle->ncp.ipcp.ns.dns[0]);
    nargv[arg] = substip(nargv[arg], "DNS1", bundle->ncp.ipcp.ns.dns[1]);
    nargv[arg] = subst(nargv[arg], "ENDDISC",
                       mp_Enddisc(bundle->ncp.mp.cfg.enddisc.class,
                                  bundle->ncp.mp.cfg.enddisc.address,
                                  bundle->ncp.mp.cfg.enddisc.len));
    nargv[arg] = substip(nargv[arg], "HISADDR", bundle->ncp.ipcp.peer_ip);

    nargv[arg] = substipv6(nargv[arg], "HISADDR6", &bundle->ncp.ipv6cp.hisaddr);

    nargv[arg] = subst(nargv[arg], "INTERFACE", bundle->iface->name);
    nargv[arg] = substull(nargv[arg], "IPOCTETSIN",
                          bundle->ncp.ipcp.throughput.OctetsIn);
    nargv[arg] = substull(nargv[arg], "IPOCTETSOUT",
                          bundle->ncp.ipcp.throughput.OctetsOut);
    nargv[arg] = substull(nargv[arg], "IPPACKETSIN",
                          bundle->ncp.ipcp.throughput.PacketsIn);
    nargv[arg] = substull(nargv[arg], "IPPACKETSOUT",
                          bundle->ncp.ipcp.throughput.PacketsOut);

    nargv[arg] = substull(nargv[arg], "IPV6OCTETSIN",
                          bundle->ncp.ipv6cp.throughput.OctetsIn);
    nargv[arg] = substull(nargv[arg], "IPV6OCTETSOUT",
                          bundle->ncp.ipv6cp.throughput.OctetsOut);
    nargv[arg] = substull(nargv[arg], "IPV6PACKETSIN",
                          bundle->ncp.ipv6cp.throughput.PacketsIn);
    nargv[arg] = substull(nargv[arg], "IPV6PACKETSOUT",
                          bundle->ncp.ipv6cp.throughput.PacketsOut);

    nargv[arg] = subst(nargv[arg], "LABEL", bundle_GetLabel(bundle));
    nargv[arg] = substip(nargv[arg], "MYADDR", bundle->ncp.ipcp.my_ip);

    nargv[arg] = substipv6(nargv[arg], "MYADDR6", &bundle->ncp.ipv6cp.myaddr);

    nargv[arg] = substipv6prefix(nargv[arg], "IPV6PREFIX",
     bundle->radius.ipv6prefix);


    nargv[arg] = substull(nargv[arg], "OCTETSIN", oin);
    nargv[arg] = substull(nargv[arg], "OCTETSOUT", oout);
    nargv[arg] = substull(nargv[arg], "PACKETSIN", pin);
    nargv[arg] = substull(nargv[arg], "PACKETSOUT", pout);
    nargv[arg] = subst(nargv[arg], "PEER_ENDDISC",
                       mp_Enddisc(bundle->ncp.mp.peer.enddisc.class,
                                  bundle->ncp.mp.peer.enddisc.address,
                                  bundle->ncp.mp.peer.enddisc.len));
    nargv[arg] = substlong(nargv[arg], "PROCESSID", pid);
    if (server.cfg.port)
      nargv[arg] = substlong(nargv[arg], "SOCKNAME", server.cfg.port);
    else
      nargv[arg] = subst(nargv[arg], "SOCKNAME", server.cfg.sockname);
    nargv[arg] = subst(nargv[arg], "UPTIME", uptime);
    nargv[arg] = subst(nargv[arg], "USER", bundle->ncp.mp.peer.authname);
    nargv[arg] = subst(nargv[arg], "VERSION", Version);
  }
  nargv[arg] = ((void*)0);
}
