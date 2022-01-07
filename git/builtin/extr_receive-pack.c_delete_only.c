
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct command {int new_oid; struct command* next; } ;


 int is_null_oid (int *) ;

__attribute__((used)) static int delete_only(struct command *commands)
{
 struct command *cmd;
 for (cmd = commands; cmd; cmd = cmd->next) {
  if (!is_null_oid(&cmd->new_oid))
   return 0;
 }
 return 1;
}
