
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct command {struct command* next; } ;


 int free (struct command*) ;

void
freecommands(struct command *cmd)
{
 struct command *next;

 while (cmd) {
  next = cmd->next;
  free(cmd);
  cmd = next;
 }
}
