
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct oid_array {int nr; int * oid; } ;
struct object_id {int dummy; } ;
struct diff_options {int output_format; char* orderfile; } ;
struct combine_diff_path {int dummy; } ;


 void* DIFF_FORMAT_NO_OUTPUT ;
 int STAT_FORMAT_MASK ;
 int diff_flush (struct diff_options*) ;
 int diff_tree_oid (int *,struct object_id const*,char*,struct diff_options*) ;
 int diffcore_order (char const*) ;
 int diffcore_std (struct diff_options*) ;
 struct combine_diff_path* intersect_paths (struct combine_diff_path*,int,int,int) ;

__attribute__((used)) static struct combine_diff_path *find_paths_generic(const struct object_id *oid,
 const struct oid_array *parents,
 struct diff_options *opt,
 int combined_all_paths)
{
 struct combine_diff_path *paths = ((void*)0);
 int i, num_parent = parents->nr;

 int output_format = opt->output_format;
 const char *orderfile = opt->orderfile;

 opt->output_format = DIFF_FORMAT_NO_OUTPUT;

 opt->orderfile = ((void*)0);


 for (i = 0; i < num_parent; i++) {




  int stat_opt = output_format & STAT_FORMAT_MASK;
  if (i == 0 && stat_opt)
   opt->output_format = stat_opt;
  else
   opt->output_format = DIFF_FORMAT_NO_OUTPUT;
  diff_tree_oid(&parents->oid[i], oid, "", opt);
  diffcore_std(opt);
  paths = intersect_paths(paths, i, num_parent,
     combined_all_paths);


  if (opt->output_format != DIFF_FORMAT_NO_OUTPUT &&
      orderfile) {
   diffcore_order(orderfile);
  }

  diff_flush(opt);
 }

 opt->output_format = output_format;
 opt->orderfile = orderfile;
 return paths;
}
