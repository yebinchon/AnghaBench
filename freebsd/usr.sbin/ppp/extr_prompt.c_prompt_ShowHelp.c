
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct prompt {int dummy; } ;


 int prompt_Printf (struct prompt*,char*) ;

__attribute__((used)) static void
prompt_ShowHelp(struct prompt *p)
{
  prompt_Printf(p, "The following commands are available:\n");
  prompt_Printf(p, " ~p\tEnter Packet mode\n");
  prompt_Printf(p, " ~t\tShow timers\n");
  prompt_Printf(p, " ~m\tShow memory map\n");
  prompt_Printf(p, " ~.\tTerminate program\n");
  prompt_Printf(p, " ~?\tThis help\n");
}
