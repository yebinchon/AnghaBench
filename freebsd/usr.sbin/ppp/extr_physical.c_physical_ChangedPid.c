
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int base; } ;
struct physical {TYPE_1__ name; } ;
typedef int pid_t ;


 int ID0uu_lock_txfr (int ,int ) ;
 int LogPHASE ;
 int UU_LOCK_OK ;
 int log_Printf (int ,char*,int ) ;
 scalar_t__ physical_LockedDevice (struct physical*) ;
 int uu_lockerr (int) ;

void
physical_ChangedPid(struct physical *p, pid_t newpid)
{
  if (physical_LockedDevice(p)) {
    int res;

    if ((res = ID0uu_lock_txfr(p->name.base, newpid)) != UU_LOCK_OK)
      log_Printf(LogPHASE, "uu_lock_txfr: %s\n", uu_lockerr(res));
  }
}
