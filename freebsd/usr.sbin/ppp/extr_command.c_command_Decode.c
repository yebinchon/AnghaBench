
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct prompt {int dummy; } ;
struct bundle {int dummy; } ;


 int MAXARGS ;
 int command_Expand_Interpret (char*,int,char**,int ) ;
 int command_Run (struct bundle*,int,char const* const*,struct prompt*,char const*,int *) ;

int
command_Decode(struct bundle *bundle, char *buff, int nb, struct prompt *prompt,
              const char *label)
{
  int argc;
  char *argv[MAXARGS];

  if ((argc = command_Expand_Interpret(buff, nb, argv, 0)) < 0)
    return 0;

  command_Run(bundle, argc, (char const *const *)argv, prompt, label, ((void*)0));
  return 1;
}
