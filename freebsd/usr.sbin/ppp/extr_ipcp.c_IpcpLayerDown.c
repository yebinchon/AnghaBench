
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct ipcp {int throughput; int my_ip; } ;
struct fsm {TYPE_3__* bundle; TYPE_1__* link; } ;
struct TYPE_9__ {scalar_t__* file; } ;
struct TYPE_11__ {char* filterid; TYPE_2__ cfg; } ;
struct TYPE_10__ {TYPE_4__ radius; int links; int radacct; } ;
struct TYPE_8__ {int name; } ;


 int INADDR_NONE ;
 int LINKDOWNFILE ;
 int LogIPCP ;
 int RAD_STOP ;
 char* bundle_GetLabel (TYPE_3__*) ;
 struct ipcp* fsm2ipcp (struct fsm*) ;
 char* inet_ntoa (int ) ;
 int ipcp_Setup (struct ipcp*,int ) ;
 int log_Printf (int ,char*,int ,char*) ;
 int radius_Account (TYPE_4__*,int *,int ,int ,int *) ;
 int radius_Flush (TYPE_4__*) ;
 int radius_StopTimer (TYPE_4__*) ;
 int snprintf (char*,int,char*,char*) ;
 scalar_t__ system_Select (TYPE_3__*,char*,int ,int *,int *) ;

__attribute__((used)) static void
IpcpLayerDown(struct fsm *fp)
{

  struct ipcp *ipcp = fsm2ipcp(fp);
  static int recursing;
  char addr[16];

  if (!recursing++) {
    snprintf(addr, sizeof addr, "%s", inet_ntoa(ipcp->my_ip));
    log_Printf(LogIPCP, "%s: LayerDown: %s\n", fp->link->name, addr);


    radius_Flush(&fp->bundle->radius);
    radius_Account(&fp->bundle->radius, &fp->bundle->radacct,
                   fp->bundle->links, RAD_STOP, &ipcp->throughput);

    if (*fp->bundle->radius.cfg.file && fp->bundle->radius.filterid)
      system_Select(fp->bundle, fp->bundle->radius.filterid, LINKDOWNFILE,
                    ((void*)0), ((void*)0));
    radius_StopTimer(&fp->bundle->radius);






    if (system_Select(fp->bundle, addr, LINKDOWNFILE, ((void*)0), ((void*)0)) < 0) {
      if (bundle_GetLabel(fp->bundle)) {
         if (system_Select(fp->bundle, bundle_GetLabel(fp->bundle),
                          LINKDOWNFILE, ((void*)0), ((void*)0)) < 0)
         system_Select(fp->bundle, "MYADDR", LINKDOWNFILE, ((void*)0), ((void*)0));
      } else
        system_Select(fp->bundle, "MYADDR", LINKDOWNFILE, ((void*)0), ((void*)0));
    }

    ipcp_Setup(ipcp, INADDR_NONE);
  }
  recursing--;
}
