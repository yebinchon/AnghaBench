
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct object_id {int dummy; } ;
struct command {int new_oid; } ;


 scalar_t__ is_null_oid (int *) ;
 int oidcpy (struct object_id*,int *) ;

__attribute__((used)) static int command_singleton_iterator(void *cb_data, struct object_id *oid)
{
 struct command **cmd_list = cb_data;
 struct command *cmd = *cmd_list;

 if (!cmd || is_null_oid(&cmd->new_oid))
  return -1;
 *cmd_list = ((void*)0);
 oidcpy(oid, &cmd->new_oid);
 return 0;
}
