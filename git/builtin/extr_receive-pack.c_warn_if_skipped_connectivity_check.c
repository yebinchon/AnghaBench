
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct shallow_info {scalar_t__* shallow_ref; } ;
struct command {size_t index; int ref_name; struct command* next; } ;


 int BUG (char*) ;
 int error (char*,int ) ;
 scalar_t__ should_process_cmd (struct command*) ;

__attribute__((used)) static void warn_if_skipped_connectivity_check(struct command *commands,
            struct shallow_info *si)
{
 struct command *cmd;
 int checked_connectivity = 1;

 for (cmd = commands; cmd; cmd = cmd->next) {
  if (should_process_cmd(cmd) && si->shallow_ref[cmd->index]) {
   error("BUG: connectivity check has not been run on ref %s",
         cmd->ref_name);
   checked_connectivity = 0;
  }
 }
 if (!checked_connectivity)
  BUG("connectivity check skipped???");
}
