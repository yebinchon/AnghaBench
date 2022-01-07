
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u_int32_t ;
struct ttydevice {char* hook; int cs; } ;
struct TYPE_2__ {int name; } ;
struct physical {int async; TYPE_1__ link; int handler; } ;
struct ng_async_cfg {int enabled; int accm; int smru; int amru; } ;


 int LogDEBUG ;
 int LogWARN ;
 int MAX_MRU ;
 int MAX_MTU ;
 int NGM_ASYNC_CMD_SET_CONFIG ;
 int NGM_ASYNC_COOKIE ;
 int NG_PATHSIZ ;
 scalar_t__ NgSendMsg (int ,char*,int ,int ,struct ng_async_cfg*,int) ;
 int async_SetLinkParams (int *,int,int) ;
 struct ttydevice* device2tty (int ) ;
 scalar_t__ isngtty (struct ttydevice*) ;
 int log_Printf (int ,char*,char*,...) ;
 int memset (struct ng_async_cfg*,int ,int) ;
 int snprintf (char*,int,char*,char*) ;

__attribute__((used)) static void
tty_SetAsyncParams(struct physical *p, u_int32_t mymap, u_int32_t hismap)
{
  struct ttydevice *dev = device2tty(p->handler);
  char asyncpath[NG_PATHSIZ];
  struct ng_async_cfg cfg;

  if (isngtty(dev)) {


    snprintf(asyncpath, sizeof asyncpath, ".:%s", dev->hook);
    memset(&cfg, 0, sizeof cfg);
    cfg.enabled = 1;
    cfg.accm = mymap | hismap;
    cfg.amru = MAX_MTU;
    cfg.smru = MAX_MRU;
    log_Printf(LogDEBUG, "Configure async node at %s\n", asyncpath);
    if (NgSendMsg(dev->cs, asyncpath, NGM_ASYNC_COOKIE,
                  NGM_ASYNC_CMD_SET_CONFIG, &cfg, sizeof cfg) < 0)
      log_Printf(LogWARN, "%s: Can't configure async node at %s\n",
                 p->link.name, asyncpath);
  } else

    async_SetLinkParams(&p->async, mymap, hismap);
}
