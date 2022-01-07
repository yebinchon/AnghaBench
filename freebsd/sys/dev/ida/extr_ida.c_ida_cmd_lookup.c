
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cmd_info {int cmd; } ;


 struct cmd_info* ci_list ;

__attribute__((used)) static struct cmd_info *
ida_cmd_lookup (int command)
{
 struct cmd_info *ci;

 ci = ci_list;
 while (ci->cmd) {
  if (ci->cmd == command)
   return (ci);
  ci++;
 }
 return (((void*)0));
}
