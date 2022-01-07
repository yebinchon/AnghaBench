
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct setup_revision_opt {int dummy; } ;
struct TYPE_2__ {scalar_t__ output_format; } ;
struct rev_info {int combine_merges; int dense_combined_merges; TYPE_1__ diffopt; int first_parent_only; scalar_t__ ignore_merges; } ;


 scalar_t__ DIFF_FORMAT_PATCH ;

__attribute__((used)) static void show_setup_revisions_tweak(struct rev_info *rev,
           struct setup_revision_opt *opt)
{
 if (rev->ignore_merges) {

  rev->ignore_merges = 0;
  if (!rev->first_parent_only && !rev->combine_merges) {

   rev->combine_merges = 1;
   rev->dense_combined_merges = 1;
  }
 }
 if (!rev->diffopt.output_format)
  rev->diffopt.output_format = DIFF_FORMAT_PATCH;
}
