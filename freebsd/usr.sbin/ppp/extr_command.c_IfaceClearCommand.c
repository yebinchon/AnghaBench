
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct cmdargs {int argc; int argn; TYPE_4__* bundle; int * argv; } ;
struct TYPE_6__ {scalar_t__ state; } ;
struct TYPE_7__ {TYPE_1__ fsm; } ;
struct TYPE_10__ {TYPE_2__ ipcp; } ;
struct TYPE_8__ {int all; } ;
struct TYPE_9__ {TYPE_5__ ncp; int iface; TYPE_3__ phys_type; } ;


 int AF_INET ;
 int AF_INET6 ;
 int IFACE_CLEAR_ALIASES ;
 int IFACE_CLEAR_ALL ;
 int PHYS_AUTO ;
 scalar_t__ ST_OPENED ;
 int iface_Clear (int ,TYPE_5__*,int,int) ;
 scalar_t__ strcasecmp (int ,char*) ;

__attribute__((used)) static int
IfaceClearCommand(struct cmdargs const *arg)
{
  int family, how;

  family = 0;
  if (arg->argc == arg->argn + 1) {
    if (strcasecmp(arg->argv[arg->argn], "inet") == 0)
      family = AF_INET;

    else if (strcasecmp(arg->argv[arg->argn], "inet6") == 0)
      family = AF_INET6;

    else
      return -1;
  } else if (arg->argc != arg->argn)
    return -1;

  how = arg->bundle->ncp.ipcp.fsm.state == ST_OPENED ||
        arg->bundle->phys_type.all & PHYS_AUTO ?
        IFACE_CLEAR_ALIASES : IFACE_CLEAR_ALL;
  iface_Clear(arg->bundle->iface, &arg->bundle->ncp, family, how);

  return 0;
}
