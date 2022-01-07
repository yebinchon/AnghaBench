
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct cmdargs {int argn; int argc; TYPE_1__* bundle; int * argv; } ;
struct TYPE_4__ {int name; } ;
struct TYPE_3__ {TYPE_2__* iface; int unit; } ;


 int iface_Name (TYPE_2__*,int ) ;
 int log_SetTun (int ,int ) ;

__attribute__((used)) static int
IfaceNameCommand(struct cmdargs const *arg)
{
  int n = arg->argn;

  if (arg->argc != n + 1)
    return -1;

  if (!iface_Name(arg->bundle->iface, arg->argv[n]))
    return 1;

  log_SetTun(arg->bundle->unit, arg->bundle->iface->name);
  return 0;
}
