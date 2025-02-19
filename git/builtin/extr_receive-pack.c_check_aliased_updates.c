
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct string_list_item {void* util; } ;
struct string_list {int dummy; } ;
struct command {int error_string; struct command* next; int ref_name; } ;


 struct string_list STRING_LIST_INIT_NODUP ;
 int check_aliased_update (struct command*,struct string_list*) ;
 struct string_list_item* string_list_append (struct string_list*,int ) ;
 int string_list_clear (struct string_list*,int ) ;
 int string_list_sort (struct string_list*) ;

__attribute__((used)) static void check_aliased_updates(struct command *commands)
{
 struct command *cmd;
 struct string_list ref_list = STRING_LIST_INIT_NODUP;

 for (cmd = commands; cmd; cmd = cmd->next) {
  struct string_list_item *item =
   string_list_append(&ref_list, cmd->ref_name);
  item->util = (void *)cmd;
 }
 string_list_sort(&ref_list);

 for (cmd = commands; cmd; cmd = cmd->next) {
  if (!cmd->error_string)
   check_aliased_update(cmd, &ref_list);
 }

 string_list_clear(&ref_list, 0);
}
