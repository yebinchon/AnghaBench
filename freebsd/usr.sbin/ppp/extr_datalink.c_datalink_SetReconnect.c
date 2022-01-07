
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct cmdargs {int argc; int argn; int * argv; TYPE_3__* cx; } ;
struct TYPE_4__ {void* max; void* timeout; } ;
struct TYPE_5__ {TYPE_1__ reconnect; } ;
struct TYPE_6__ {TYPE_2__ cfg; } ;


 void* atoi (int ) ;

int
datalink_SetReconnect(struct cmdargs const *arg)
{
  if (arg->argc == arg->argn+2) {
    arg->cx->cfg.reconnect.timeout = atoi(arg->argv[arg->argn]);
    arg->cx->cfg.reconnect.max = atoi(arg->argv[arg->argn+1]);
    return 0;
  }
  return -1;
}
