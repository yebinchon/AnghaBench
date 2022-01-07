
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int * argv; } ;
struct TYPE_3__ {int * argv; } ;


 int FAILED_RUN ;
 int RUN_GIT_CMD ;
 int die (int ,int ) ;
 scalar_t__ pack_refs ;
 TYPE_2__ pack_refs_cmd ;
 scalar_t__ prune_reflogs ;
 TYPE_1__ reflog ;
 scalar_t__ run_command_v_opt (int *,int ) ;

__attribute__((used)) static void gc_before_repack(void)
{





 static int done = 0;
 if (done++)
  return;

 if (pack_refs && run_command_v_opt(pack_refs_cmd.argv, RUN_GIT_CMD))
  die(FAILED_RUN, pack_refs_cmd.argv[0]);

 if (prune_reflogs && run_command_v_opt(reflog.argv, RUN_GIT_CMD))
  die(FAILED_RUN, reflog.argv[0]);
}
