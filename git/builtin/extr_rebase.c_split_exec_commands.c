
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct string_list {int dummy; } ;


 int string_list_remove_empty_items (struct string_list*,int ) ;
 int string_list_split (struct string_list*,char const*,char,int) ;

__attribute__((used)) static void split_exec_commands(const char *cmd, struct string_list *commands)
{
 if (cmd && *cmd) {
  string_list_split(commands, cmd, '\n', -1);



  string_list_remove_empty_items(commands, 0);
 }
}
