
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct cmdargs {scalar_t__ argc; scalar_t__ argn; TYPE_1__* cx; int bundle; } ;
struct TYPE_2__ {scalar_t__ state; } ;


 scalar_t__ DATALINK_CLOSED ;
 int LogWARN ;
 int bundle_DatalinkRemove (int ,TYPE_1__*) ;
 int log_Printf (int ,char*) ;

__attribute__((used)) static int
RemoveCommand(struct cmdargs const *arg)
{
  if (arg->argc != arg->argn)
    return -1;

  if (arg->cx->state != DATALINK_CLOSED) {
    log_Printf(LogWARN, "remove: Cannot delete links that aren't closed\n");
    return 2;
  }

  bundle_DatalinkRemove(arg->bundle, arg->cx);
  return 0;
}
