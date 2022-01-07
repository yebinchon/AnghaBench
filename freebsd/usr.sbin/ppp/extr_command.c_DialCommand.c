
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct cmdargs {scalar_t__ argc; scalar_t__ argn; TYPE_2__* cx; TYPE_4__* bundle; } ;
struct TYPE_5__ {int all; } ;
struct TYPE_8__ {TYPE_1__ phys_type; } ;
struct TYPE_7__ {int type; } ;
struct TYPE_6__ {int * name; TYPE_3__* physical; } ;


 int LoadCommand (struct cmdargs const*) ;
 int LogWARN ;
 int PHYS_ALL ;
 int PHYS_AUTO ;
 int PHYS_INTERACTIVE ;
 int bundle_Open (TYPE_4__*,int *,int ,int) ;
 int log_Printf (int ,char*) ;

__attribute__((used)) static int
DialCommand(struct cmdargs const *arg)
{
  int res;

  if ((arg->cx && !(arg->cx->physical->type & (PHYS_INTERACTIVE|PHYS_AUTO)))
      || (!arg->cx &&
          (arg->bundle->phys_type.all & ~(PHYS_INTERACTIVE|PHYS_AUTO)))) {
    log_Printf(LogWARN, "Manual dial is only available for auto and"
              " interactive links\n");
    return 1;
  }

  if (arg->argc > arg->argn && (res = LoadCommand(arg)) != 0)
    return res;

  bundle_Open(arg->bundle, arg->cx ? arg->cx->name : ((void*)0), PHYS_ALL, 1);

  return 0;
}
