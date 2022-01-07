
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct filter {int rule; } ;
struct cmdargs {int argc; int argn; int * argv; TYPE_2__* bundle; } ;
struct TYPE_3__ {struct filter alive; struct filter dial; struct filter out; struct filter in; } ;
struct TYPE_4__ {int ncp; TYPE_1__ filter; } ;


 int LogWARN ;
 int filter_Parse (int *,int,int *,int ) ;
 int log_Printf (int ,char*,int ) ;
 int strcmp (int ,char*) ;

int
filter_Set(struct cmdargs const *arg)
{
  struct filter *filter;

  if (arg->argc < arg->argn+2)
    return -1;

  if (!strcmp(arg->argv[arg->argn], "in"))
    filter = &arg->bundle->filter.in;
  else if (!strcmp(arg->argv[arg->argn], "out"))
    filter = &arg->bundle->filter.out;
  else if (!strcmp(arg->argv[arg->argn], "dial"))
    filter = &arg->bundle->filter.dial;
  else if (!strcmp(arg->argv[arg->argn], "alive"))
    filter = &arg->bundle->filter.alive;
  else {
    log_Printf(LogWARN, "filter_Set: %s: Invalid filter name.\n",
              arg->argv[arg->argn]);
    return -1;
  }

  filter_Parse(&arg->bundle->ncp, arg->argc - arg->argn - 1,
        arg->argv + arg->argn + 1, filter->rule);
  return 0;
}
