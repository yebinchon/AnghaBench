
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wt_status_state {scalar_t__ bisect_in_progress; scalar_t__ revert_in_progress; scalar_t__ cherry_pick_in_progress; scalar_t__ rebase_in_progress; scalar_t__ rebase_interactive_in_progress; scalar_t__ am_in_progress; scalar_t__ merge_in_progress; } ;
typedef int state ;


 int _ (char*) ;
 int die (int ) ;
 int memset (struct wt_status_state*,int ,int) ;
 int the_repository ;
 int warning (int ) ;
 int wt_status_get_state (int ,struct wt_status_state*,int ) ;

__attribute__((used)) static void die_if_some_operation_in_progress(void)
{
 struct wt_status_state state;

 memset(&state, 0, sizeof(state));
 wt_status_get_state(the_repository, &state, 0);

 if (state.merge_in_progress)
  die(_("cannot switch branch while merging\n"
        "Consider \"git merge --quit\" "
        "or \"git worktree add\"."));
 if (state.am_in_progress)
  die(_("cannot switch branch in the middle of an am session\n"
        "Consider \"git am --quit\" "
        "or \"git worktree add\"."));
 if (state.rebase_interactive_in_progress || state.rebase_in_progress)
  die(_("cannot switch branch while rebasing\n"
        "Consider \"git rebase --quit\" "
        "or \"git worktree add\"."));
 if (state.cherry_pick_in_progress)
  die(_("cannot switch branch while cherry-picking\n"
        "Consider \"git cherry-pick --quit\" "
        "or \"git worktree add\"."));
 if (state.revert_in_progress)
  die(_("cannot switch branch while reverting\n"
        "Consider \"git revert --quit\" "
        "or \"git worktree add\"."));
 if (state.bisect_in_progress)
  warning(_("you are switching branch while bisecting"));
}
