
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct object_id {int dummy; } ;
struct iterate_data {TYPE_1__* si; struct command* cmds; } ;
struct command {size_t index; struct command* next; int new_oid; int skip_update; } ;
struct TYPE_2__ {scalar_t__* shallow_ref; } ;


 int is_null_oid (int *) ;
 int oidcpy (struct object_id*,int *) ;
 scalar_t__ shallow_update ;

__attribute__((used)) static int iterate_receive_command_list(void *cb_data, struct object_id *oid)
{
 struct iterate_data *data = cb_data;
 struct command **cmd_list = &data->cmds;
 struct command *cmd = *cmd_list;

 for (; cmd; cmd = cmd->next) {
  if (shallow_update && data->si->shallow_ref[cmd->index])

   continue;
  if (!is_null_oid(&cmd->new_oid) && !cmd->skip_update) {
   oidcpy(oid, &cmd->new_oid);
   *cmd_list = cmd->next;
   return 0;
  }
 }
 *cmd_list = ((void*)0);
 return -1;
}
