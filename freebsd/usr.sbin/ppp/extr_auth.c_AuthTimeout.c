
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int (* req ) (struct authinfo*) ;} ;
struct authinfo {scalar_t__ retry; TYPE_1__* physical; int authtimer; TYPE_2__ fn; int id; } ;
struct TYPE_3__ {int dl; } ;


 int LogPHASE ;
 int datalink_AuthNotOk (int ) ;
 int log_Printf (int ,char*) ;
 int stub1 (struct authinfo*) ;
 int timer_Start (int *) ;
 int timer_Stop (int *) ;

__attribute__((used)) static void
AuthTimeout(void *vauthp)
{
  struct authinfo *authp = (struct authinfo *)vauthp;

  timer_Stop(&authp->authtimer);
  if (--authp->retry > 0) {
    authp->id++;
    (*authp->fn.req)(authp);
    timer_Start(&authp->authtimer);
  } else {
    log_Printf(LogPHASE, "Auth: No response from server\n");
    datalink_AuthNotOk(authp->physical->dl);
  }
}
