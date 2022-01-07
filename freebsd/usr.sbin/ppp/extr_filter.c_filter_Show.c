
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct filter {int rule; int name; } ;
struct cmdargs {int argc; int argn; int prompt; TYPE_2__* bundle; int * argv; } ;
struct TYPE_3__ {struct filter alive; struct filter dial; struct filter out; struct filter in; } ;
struct TYPE_4__ {TYPE_1__ filter; } ;


 int doShowFilter (int ,int ) ;
 int prompt_Printf (int ,char*,...) ;
 int strcmp (int ,char*) ;

int
filter_Show(struct cmdargs const *arg)
{
  if (arg->argc > arg->argn+1)
    return -1;

  if (arg->argc == arg->argn+1) {
    struct filter *filter;

    if (!strcmp(arg->argv[arg->argn], "in"))
      filter = &arg->bundle->filter.in;
    else if (!strcmp(arg->argv[arg->argn], "out"))
      filter = &arg->bundle->filter.out;
    else if (!strcmp(arg->argv[arg->argn], "dial"))
      filter = &arg->bundle->filter.dial;
    else if (!strcmp(arg->argv[arg->argn], "alive"))
      filter = &arg->bundle->filter.alive;
    else
      return -1;
    doShowFilter(filter->rule, arg->prompt);
  } else {
    struct filter *filter[4];
    int f;

    filter[0] = &arg->bundle->filter.in;
    filter[1] = &arg->bundle->filter.out;
    filter[2] = &arg->bundle->filter.dial;
    filter[3] = &arg->bundle->filter.alive;
    for (f = 0; f < 4; f++) {
      if (f)
        prompt_Printf(arg->prompt, "\n");
      prompt_Printf(arg->prompt, "%s:\n", filter[f]->name);
      doShowFilter(filter[f]->rule, arg->prompt);
    }
  }

  return 0;
}
