
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct link {int name; } ;
struct cmdargs {int prompt; } ;


 struct link* command_ChooseLink (struct cmdargs const*) ;
 int link_ReportProtocolStatus (struct link*,int ) ;
 int prompt_Printf (int ,char*,int ) ;

__attribute__((used)) static int
ShowProtocolStats(struct cmdargs const *arg)
{
  struct link *l = command_ChooseLink(arg);

  prompt_Printf(arg->prompt, "%s:\n", l->name);
  link_ReportProtocolStatus(l, arg->prompt);
  return 0;
}
