
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct diff_options {int output_format; } ;
struct rev_info {struct diff_options diffopt; } ;
struct combine_diff_path {int dummy; } ;


 int DIFF_FORMAT_NAME ;
 int DIFF_FORMAT_NAME_STATUS ;
 int DIFF_FORMAT_PATCH ;
 int DIFF_FORMAT_RAW ;
 int show_patch_diff (struct combine_diff_path*,int,int,int,struct rev_info*) ;
 int show_raw_diff (struct combine_diff_path*,int,struct rev_info*) ;

void show_combined_diff(struct combine_diff_path *p,
         int num_parent,
         int dense,
         struct rev_info *rev)
{
 struct diff_options *opt = &rev->diffopt;

 if (opt->output_format & (DIFF_FORMAT_RAW |
      DIFF_FORMAT_NAME |
      DIFF_FORMAT_NAME_STATUS))
  show_raw_diff(p, num_parent, rev);
 else if (opt->output_format & DIFF_FORMAT_PATCH)
  show_patch_diff(p, num_parent, dense, 1, rev);
}
