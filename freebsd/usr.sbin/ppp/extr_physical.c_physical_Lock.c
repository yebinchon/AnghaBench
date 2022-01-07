
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {char* full; int base; } ;
struct TYPE_3__ {int name; } ;
struct physical {scalar_t__ type; TYPE_2__ name; TYPE_1__ link; } ;


 int ID0uu_lock (int ) ;
 int LogPHASE ;
 scalar_t__ PHYS_DIRECT ;
 int UU_LOCK_INUSE ;
 int UU_LOCK_OK ;
 int log_Printf (int ,char*,int ,char*,...) ;
 int uu_lockerr (int) ;

__attribute__((used)) static int
physical_Lock(struct physical *p)
{
  int res;

  if (*p->name.full == '/' && p->type != PHYS_DIRECT &&
      (res = ID0uu_lock(p->name.base)) != UU_LOCK_OK) {
    if (res == UU_LOCK_INUSE)
      log_Printf(LogPHASE, "%s: %s is in use\n", p->link.name, p->name.full);
    else
      log_Printf(LogPHASE, "%s: %s is in use: uu_lock: %s\n",
                 p->link.name, p->name.full, uu_lockerr(res));
    return 0;
  }

  return 1;
}
