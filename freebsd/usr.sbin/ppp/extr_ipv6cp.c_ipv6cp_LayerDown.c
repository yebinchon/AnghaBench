
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct ipv6cp {int throughput; int myaddr; } ;
struct fsm {TYPE_3__* bundle; TYPE_1__* link; } ;
struct TYPE_9__ {scalar_t__* file; } ;
struct TYPE_11__ {char* filterid; TYPE_2__ cfg; } ;
struct TYPE_10__ {TYPE_4__ radius; int links; int radacct6; } ;
struct TYPE_8__ {int name; } ;


 int Enabled (TYPE_3__*,int ) ;
 int LINKDOWNFILE ;
 int LogIPV6CP ;
 int NCP_ASCIIBUFFERSIZE ;
 int OPT_IPCP ;
 int RAD_STOP ;
 char* bundle_GetLabel (TYPE_3__*) ;
 struct ipv6cp* fsm2ipv6cp (struct fsm*) ;
 int ipv6cp_Setup (struct ipv6cp*) ;
 int log_Printf (int ,char*,int ,char*) ;
 char* ncpaddr_ntoa (int *) ;
 int radius_Account (TYPE_4__*,int *,int ,int ,int *) ;
 int radius_Flush (TYPE_4__*) ;
 int snprintf (char*,int,char*,char*) ;
 scalar_t__ system_Select (TYPE_3__*,char*,int ,int *,int *) ;

__attribute__((used)) static void
ipv6cp_LayerDown(struct fsm *fp)
{

  struct ipv6cp *ipv6cp = fsm2ipv6cp(fp);
  static int recursing;
  char addr[NCP_ASCIIBUFFERSIZE];

  if (!recursing++) {
    snprintf(addr, sizeof addr, "%s", ncpaddr_ntoa(&ipv6cp->myaddr));
    log_Printf(LogIPV6CP, "%s: LayerDown: %s\n", fp->link->name, addr);


    radius_Flush(&fp->bundle->radius);
    radius_Account(&fp->bundle->radius, &fp->bundle->radacct6,
     fp->bundle->links, RAD_STOP, &ipv6cp->throughput);






    if (!Enabled(fp->bundle, OPT_IPCP)) {
      if (*fp->bundle->radius.cfg.file && fp->bundle->radius.filterid)
 system_Select(fp->bundle, fp->bundle->radius.filterid, LINKDOWNFILE,
        ((void*)0), ((void*)0));
    }






    if (system_Select(fp->bundle, addr, LINKDOWNFILE, ((void*)0), ((void*)0)) < 0) {





      if (bundle_GetLabel(fp->bundle) && !Enabled(fp->bundle, OPT_IPCP)) {
 if (system_Select(fp->bundle, bundle_GetLabel(fp->bundle),
     LINKDOWNFILE, ((void*)0), ((void*)0)) < 0)
   system_Select(fp->bundle, "MYADDR6", LINKDOWNFILE, ((void*)0), ((void*)0));
      } else
 system_Select(fp->bundle, "MYADDR6", LINKDOWNFILE, ((void*)0), ((void*)0));
    }

    ipv6cp_Setup(ipv6cp);
  }
  recursing--;
}
