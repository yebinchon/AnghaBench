
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct am_state {int msg; } ;


 int FREE_AND_NULL (int ) ;
 int _ (char*) ;
 int am_path (struct am_state*,char*) ;
 int assert (int ) ;
 int die (int ,int ) ;
 scalar_t__ read_commit_msg (struct am_state*) ;
 int run_hook_le (int *,char*,int ,int *) ;

__attribute__((used)) static int run_applypatch_msg_hook(struct am_state *state)
{
 int ret;

 assert(state->msg);
 ret = run_hook_le(((void*)0), "applypatch-msg", am_path(state, "final-commit"), ((void*)0));

 if (!ret) {
  FREE_AND_NULL(state->msg);
  if (read_commit_msg(state) < 0)
   die(_("'%s' was deleted by the applypatch-msg hook"),
    am_path(state, "final-commit"));
 }

 return ret;
}
