
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_7__ ;
typedef struct TYPE_15__ TYPE_6__ ;
typedef struct TYPE_14__ TYPE_5__ ;
typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_13__ {int maxreq; } ;
struct TYPE_14__ {TYPE_4__ fsm; } ;
struct ipv6cp {TYPE_5__ cfg; int throughput; int his_ifid; int hisaddr; int myaddr; } ;
struct TYPE_12__ {int reqs; int naks; int rejs; } ;
struct fsm {TYPE_3__ more; TYPE_6__* bundle; TYPE_1__* link; } ;
struct TYPE_11__ {scalar_t__* file; } ;
struct TYPE_16__ {char* filterid; TYPE_2__ cfg; } ;
struct TYPE_15__ {TYPE_7__ radius; int links; int radacct6; } ;
struct TYPE_10__ {int name; } ;


 int Enabled (TYPE_6__*,int ) ;
 int LINKUPFILE ;
 int LogIPV6CP ;
 int NCP_ASCIIBUFFERSIZE ;
 int OPT_IPCP ;
 int RAD_START ;
 char* bundle_GetLabel (TYPE_6__*) ;
 struct ipv6cp* fsm2ipv6cp (struct fsm*) ;
 int ipv6cp_InterfaceUp (struct ipv6cp*) ;
 int log_DisplayPrompts () ;
 int log_Printf (int ,char*,char*,...) ;
 char* ncpaddr_ntoa (int *) ;
 int radius_Account (TYPE_7__*,int *,int ,int ,int *) ;
 int radius_Account_Set_Ipv6 (int *,int ) ;
 int snprintf (char*,int,char*,char*) ;
 scalar_t__ system_Select (TYPE_6__*,char*,int ,int *,int *) ;

__attribute__((used)) static int
ipv6cp_LayerUp(struct fsm *fp)
{

  struct ipv6cp *ipv6cp = fsm2ipv6cp(fp);
  char tbuff[NCP_ASCIIBUFFERSIZE];

  log_Printf(LogIPV6CP, "%s: LayerUp.\n", fp->link->name);
  if (!ipv6cp_InterfaceUp(ipv6cp))
    return 0;

  snprintf(tbuff, sizeof tbuff, "%s", ncpaddr_ntoa(&ipv6cp->myaddr));
  log_Printf(LogIPV6CP, "myaddr %s hisaddr = %s\n",
             tbuff, ncpaddr_ntoa(&ipv6cp->hisaddr));


  radius_Account_Set_Ipv6(&fp->bundle->radacct6, ipv6cp->his_ifid);
  radius_Account(&fp->bundle->radius, &fp->bundle->radacct6,
   fp->bundle->links, RAD_START, &ipv6cp->throughput);






  if (!Enabled(fp->bundle, OPT_IPCP)) {
    if (*fp->bundle->radius.cfg.file && fp->bundle->radius.filterid)
      system_Select(fp->bundle, fp->bundle->radius.filterid, LINKUPFILE,
      ((void*)0), ((void*)0));
  }






  if (system_Select(fp->bundle, tbuff, LINKUPFILE, ((void*)0), ((void*)0)) < 0) {





    if (bundle_GetLabel(fp->bundle) && !Enabled(fp->bundle, OPT_IPCP)) {
      if (system_Select(fp->bundle, bundle_GetLabel(fp->bundle),
   LINKUPFILE, ((void*)0), ((void*)0)) < 0)
 system_Select(fp->bundle, "MYADDR6", LINKUPFILE, ((void*)0), ((void*)0));
    } else
      system_Select(fp->bundle, "MYADDR6", LINKUPFILE, ((void*)0), ((void*)0));
  }

  fp->more.reqs = fp->more.naks = fp->more.rejs = ipv6cp->cfg.fsm.maxreq * 3;
  log_DisplayPrompts();

  return 1;
}
