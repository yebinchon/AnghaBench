
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct command {int skip_update; int error_string; } ;



__attribute__((used)) static int should_process_cmd(struct command *cmd)
{
 return !cmd->error_string && !cmd->skip_update;
}
