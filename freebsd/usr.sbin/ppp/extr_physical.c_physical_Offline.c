
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int name; } ;
struct physical {TYPE_2__ link; TYPE_1__* handler; } ;
struct TYPE_3__ {int (* offline ) (struct physical*) ;} ;


 int LogPHASE ;
 int log_Printf (int ,char*,int ) ;
 int stub1 (struct physical*) ;

void
physical_Offline(struct physical *p)
{
  if (p->handler && p->handler->offline)
    (*p->handler->offline)(p);
  log_Printf(LogPHASE, "%s: Disconnected!\n", p->link.name);
}
