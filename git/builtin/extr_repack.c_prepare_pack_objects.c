
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pack_objects_args {scalar_t__ quiet; scalar_t__ local; scalar_t__ no_reuse_object; scalar_t__ no_reuse_delta; scalar_t__ max_pack_size; scalar_t__ threads; scalar_t__ depth; scalar_t__ window_memory; scalar_t__ window; } ;
struct child_process {int git_cmd; int out; int args; } ;


 int argv_array_push (int *,char*) ;
 int argv_array_pushf (int *,char*,...) ;
 scalar_t__ delta_base_offset ;
 char* packtmp ;

__attribute__((used)) static void prepare_pack_objects(struct child_process *cmd,
     const struct pack_objects_args *args)
{
 argv_array_push(&cmd->args, "pack-objects");
 if (args->window)
  argv_array_pushf(&cmd->args, "--window=%s", args->window);
 if (args->window_memory)
  argv_array_pushf(&cmd->args, "--window-memory=%s", args->window_memory);
 if (args->depth)
  argv_array_pushf(&cmd->args, "--depth=%s", args->depth);
 if (args->threads)
  argv_array_pushf(&cmd->args, "--threads=%s", args->threads);
 if (args->max_pack_size)
  argv_array_pushf(&cmd->args, "--max-pack-size=%s", args->max_pack_size);
 if (args->no_reuse_delta)
  argv_array_pushf(&cmd->args, "--no-reuse-delta");
 if (args->no_reuse_object)
  argv_array_pushf(&cmd->args, "--no-reuse-object");
 if (args->local)
  argv_array_push(&cmd->args, "--local");
 if (args->quiet)
  argv_array_push(&cmd->args, "--quiet");
 if (delta_base_offset)
  argv_array_push(&cmd->args, "--delta-base-offset");
 argv_array_push(&cmd->args, packtmp);
 cmd->git_cmd = 1;
 cmd->out = -1;
}
