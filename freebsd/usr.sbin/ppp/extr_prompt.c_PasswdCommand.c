
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct cmdargs {int argc; int argn; char** argv; TYPE_3__* prompt; } ;
struct TYPE_6__ {int auth; TYPE_2__* owner; } ;
struct TYPE_4__ {int passwd; } ;
struct TYPE_5__ {TYPE_1__ cfg; } ;


 int LOCAL_AUTH ;
 int LOCAL_NO_AUTH ;
 int LogWARN ;
 int log_Printf (int ,char*) ;
 int strcmp (int ,char const*) ;

int
PasswdCommand(struct cmdargs const *arg)
{
  const char *pass;

  if (!arg->prompt) {
    log_Printf(LogWARN, "passwd: Cannot specify without a prompt\n");
    return 0;
  }

  if (arg->prompt->owner == ((void*)0)) {
    log_Printf(LogWARN, "passwd: Not required\n");
    return 0;
  }

  if (arg->argc == arg->argn)
    pass = "";
  else if (arg->argc > arg->argn+1)
    return -1;
  else
    pass = arg->argv[arg->argn];

  if (!strcmp(arg->prompt->owner->cfg.passwd, pass))
    arg->prompt->auth = LOCAL_AUTH;
  else
    arg->prompt->auth = LOCAL_NO_AUTH;

  return 0;
}
