
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int ind_size; int continuation_indent; scalar_t__ max_col; scalar_t__ lineup_to_parens_always; int lineup_to_parens; } ;
struct TYPE_3__ {int ind_level; int paren_level; scalar_t__ ind_stmt; } ;


 scalar_t__ count_spaces (int,int ) ;
 TYPE_2__ opt ;
 int paren_target ;
 TYPE_1__ ps ;
 int s_code ;

int
compute_code_target(void)
{
    int target_col = opt.ind_size * ps.ind_level + 1;

    if (ps.paren_level)
 if (!opt.lineup_to_parens)
     target_col += opt.continuation_indent *
  (2 * opt.continuation_indent == opt.ind_size ? 1 : ps.paren_level);
 else if (opt.lineup_to_parens_always)
     target_col = paren_target;
 else {
     int w;
     int t = paren_target;

     if ((w = count_spaces(t, s_code) - opt.max_col) > 0
      && count_spaces(target_col, s_code) <= opt.max_col) {
  t -= w + 1;
  if (t > target_col)
      target_col = t;
     }
     else
  target_col = t;
 }
    else if (ps.ind_stmt)
 target_col += opt.continuation_indent;
    return target_col;
}
