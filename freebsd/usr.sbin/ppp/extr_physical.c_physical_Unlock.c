
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {char* full; int base; } ;
struct TYPE_3__ {int name; } ;
struct physical {scalar_t__ type; TYPE_2__ name; TYPE_1__ link; } ;


 int ID0uu_unlock (int ) ;
 int LogALERT ;
 scalar_t__ PHYS_DIRECT ;
 int log_Printf (int ,char*,int ,int ) ;

__attribute__((used)) static void
physical_Unlock(struct physical *p)
{
  if (*p->name.full == '/' && p->type != PHYS_DIRECT &&
      ID0uu_unlock(p->name.base) == -1)
    log_Printf(LogALERT, "%s: Can't uu_unlock %s\n", p->link.name,
               p->name.base);
}
