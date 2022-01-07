
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int from; int type; } ;
struct prompt {int active; TYPE_1__ src; struct prompt* next; } ;
struct cmdargs {struct prompt* prompt; } ;


 int prompt_Printf (struct prompt*,char*,...) ;
 struct prompt* promptlist ;

int
log_ShowWho(struct cmdargs const *arg)
{
  struct prompt *p;

  for (p = promptlist; p; p = p->next) {
    prompt_Printf(arg->prompt, "%s (%s)", p->src.type, p->src.from);
    if (p == arg->prompt)
      prompt_Printf(arg->prompt, " *");
    if (!p->active)
      prompt_Printf(arg->prompt, " ^Z");
    prompt_Printf(arg->prompt, "\n");
  }

  return 0;
}
