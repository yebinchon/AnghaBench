
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stash_info {int i_tree; int b_tree; int w_tree; int b_commit; } ;


 int _ (char*) ;
 int die (int ,char const*) ;
 scalar_t__ get_oidf (int *,char*,char const*) ;

__attribute__((used)) static void assert_stash_like(struct stash_info *info, const char *revision)
{
 if (get_oidf(&info->b_commit, "%s^1", revision) ||
     get_oidf(&info->w_tree, "%s:", revision) ||
     get_oidf(&info->b_tree, "%s^1:", revision) ||
     get_oidf(&info->i_tree, "%s^2:", revision))
  die(_("'%s' is not a stash-like commit"), revision);
}
