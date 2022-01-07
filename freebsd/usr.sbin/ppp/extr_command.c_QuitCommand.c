
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct cmdargs {size_t argc; size_t argn; TYPE_1__* prompt; int * argv; } ;
struct TYPE_3__ {int auth; } ;


 int Cleanup () ;
 int LOCAL_AUTH ;
 int prompt_Destroy (TYPE_1__*,int) ;
 scalar_t__ prompt_IsController (TYPE_1__*) ;
 int strcasecmp (int ,char*) ;

__attribute__((used)) static int
QuitCommand(struct cmdargs const *arg)
{
  if (!arg->prompt || prompt_IsController(arg->prompt) ||
      (arg->argc > arg->argn && !strcasecmp(arg->argv[arg->argn], "all") &&
       (arg->prompt->auth & LOCAL_AUTH)))
    Cleanup();
  if (arg->prompt)
    prompt_Destroy(arg->prompt, 1);

  return 0;
}
