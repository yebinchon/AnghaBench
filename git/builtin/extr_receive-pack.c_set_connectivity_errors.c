
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct shallow_info {scalar_t__* shallow_ref; } ;
struct command {size_t index; char* error_string; struct command* next; } ;
struct check_connected_options {int env; } ;


 struct check_connected_options CHECK_CONNECTED_INIT ;
 int check_connected (int ,struct command**,struct check_connected_options*) ;
 int command_singleton_iterator ;
 scalar_t__ shallow_update ;
 int tmp_objdir ;
 int tmp_objdir_env (int ) ;

__attribute__((used)) static void set_connectivity_errors(struct command *commands,
        struct shallow_info *si)
{
 struct command *cmd;

 for (cmd = commands; cmd; cmd = cmd->next) {
  struct command *singleton = cmd;
  struct check_connected_options opt = CHECK_CONNECTED_INIT;

  if (shallow_update && si->shallow_ref[cmd->index])

   continue;

  opt.env = tmp_objdir_env(tmp_objdir);
  if (!check_connected(command_singleton_iterator, &singleton,
         &opt))
   continue;

  cmd->error_string = "missing necessary objects";
 }
}
