
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct setup_revision_opt {int dummy; } ;
struct TYPE_5__ {int follow_renames; scalar_t__ default_follow_renames; } ;
struct TYPE_6__ {scalar_t__ output_format; TYPE_2__ flags; } ;
struct TYPE_4__ {int nr; } ;
struct rev_info {scalar_t__ ignore_merges; scalar_t__ combine_merges; TYPE_3__ diffopt; TYPE_1__ prune_data; } ;


 scalar_t__ DIFF_FORMAT_PATCH ;

__attribute__((used)) static void log_setup_revisions_tweak(struct rev_info *rev,
          struct setup_revision_opt *opt)
{
 if (rev->diffopt.flags.default_follow_renames &&
     rev->prune_data.nr == 1)
  rev->diffopt.flags.follow_renames = 1;


 if (!rev->diffopt.output_format && rev->combine_merges)
  rev->diffopt.output_format = DIFF_FORMAT_PATCH;


 if (rev->combine_merges)
  rev->ignore_merges = 0;
}
