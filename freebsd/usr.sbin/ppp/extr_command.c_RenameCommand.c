
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct cmdargs {int argc; int argn; int * argv; TYPE_1__* cx; int bundle; } ;
struct TYPE_2__ {int name; } ;


 int LogWARN ;
 scalar_t__ bundle_RenameDatalink (int ,TYPE_1__*,int ) ;
 int log_Printf (int ,char*,int ,int ) ;

__attribute__((used)) static int
RenameCommand(struct cmdargs const *arg)
{
  if (arg->argc != arg->argn + 1)
    return -1;

  if (bundle_RenameDatalink(arg->bundle, arg->cx, arg->argv[arg->argn]))
    return 0;

  log_Printf(LogWARN, "%s -> %s: target name already exists\n",
             arg->cx->name, arg->argv[arg->argn]);
  return 1;
}
