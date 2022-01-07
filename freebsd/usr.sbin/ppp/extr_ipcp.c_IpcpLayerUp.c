
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_18__ TYPE_9__ ;
typedef struct TYPE_17__ TYPE_7__ ;
typedef struct TYPE_16__ TYPE_6__ ;
typedef struct TYPE_15__ TYPE_5__ ;
typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_15__ {int maxreq; } ;
struct TYPE_16__ {TYPE_5__ fsm; } ;
struct TYPE_12__ {int cslc; } ;
struct ipcp {int peer_compproto; TYPE_6__ cfg; int throughput; int ifmask; int peer_ip; TYPE_2__ vj; int my_ip; } ;
struct TYPE_14__ {int reqs; int naks; int rejs; } ;
struct fsm {TYPE_4__ more; TYPE_7__* bundle; TYPE_1__* link; } ;
struct TYPE_13__ {scalar_t__* file; } ;
struct TYPE_18__ {char* filterid; TYPE_3__ cfg; } ;
struct TYPE_17__ {TYPE_9__ radius; int links; int radacct; } ;
struct TYPE_11__ {int name; } ;


 int LINKUPFILE ;
 int LogIPCP ;
 int PROTO_VJCOMP ;
 int RAD_START ;
 char* bundle_GetLabel (TYPE_7__*) ;
 struct ipcp* fsm2ipcp (struct fsm*) ;
 char* inet_ntoa (int ) ;
 int ipcp_InterfaceUp (struct ipcp*) ;
 int log_DisplayPrompts () ;
 int log_Printf (int ,char*,char*,...) ;
 int radius_Account (TYPE_9__*,int *,int ,int ,int *) ;
 int radius_Account_Set_Ip (int *,int *,int *) ;
 int radius_StartTimer (TYPE_7__*) ;
 int sl_compress_init (int *,int) ;
 int snprintf (char*,int,char*,char*) ;
 scalar_t__ system_Select (TYPE_7__*,char*,int ,int *,int *) ;

__attribute__((used)) static int
IpcpLayerUp(struct fsm *fp)
{

  struct ipcp *ipcp = fsm2ipcp(fp);
  char tbuff[16];

  log_Printf(LogIPCP, "%s: LayerUp.\n", fp->link->name);
  snprintf(tbuff, sizeof tbuff, "%s", inet_ntoa(ipcp->my_ip));
  log_Printf(LogIPCP, "myaddr %s hisaddr = %s\n",
             tbuff, inet_ntoa(ipcp->peer_ip));

  if (ipcp->peer_compproto >> 16 == PROTO_VJCOMP)
    sl_compress_init(&ipcp->vj.cslc, (ipcp->peer_compproto >> 8) & 255);

  if (!ipcp_InterfaceUp(ipcp))
    return 0;


  radius_Account_Set_Ip(&fp->bundle->radacct, &ipcp->peer_ip, &ipcp->ifmask);
  radius_Account(&fp->bundle->radius, &fp->bundle->radacct, fp->bundle->links,
                 RAD_START, &ipcp->throughput);

  if (*fp->bundle->radius.cfg.file && fp->bundle->radius.filterid)
    system_Select(fp->bundle, fp->bundle->radius.filterid, LINKUPFILE,
                  ((void*)0), ((void*)0));
  radius_StartTimer(fp->bundle);






  if (system_Select(fp->bundle, tbuff, LINKUPFILE, ((void*)0), ((void*)0)) < 0) {
    if (bundle_GetLabel(fp->bundle)) {
      if (system_Select(fp->bundle, bundle_GetLabel(fp->bundle),
                       LINKUPFILE, ((void*)0), ((void*)0)) < 0)
        system_Select(fp->bundle, "MYADDR", LINKUPFILE, ((void*)0), ((void*)0));
    } else
      system_Select(fp->bundle, "MYADDR", LINKUPFILE, ((void*)0), ((void*)0));
  }

  fp->more.reqs = fp->more.naks = fp->more.rejs = ipcp->cfg.fsm.maxreq * 3;
  log_DisplayPrompts();

  return 1;
}
