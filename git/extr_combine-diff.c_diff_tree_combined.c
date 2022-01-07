
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int recursive; scalar_t__ follow_renames; scalar_t__ allow_external; } ;
struct diff_options {scalar_t__ output_format; int break_opt; int pickaxe_opts; int pathspec; int line_termination; scalar_t__ orderfile; scalar_t__ filter; scalar_t__ detect_rename; TYPE_1__ flags; scalar_t__ skip_stat_unmatch; } ;
struct rev_info {int combined_all_paths; int commit_format; scalar_t__ verbose_header; int no_commit_id; int loginfo; struct diff_options diffopt; } ;
struct oid_array {int nr; int * oid; } ;
struct object_id {int dummy; } ;
struct obj_order {TYPE_2__* parent; struct obj_order* next; struct obj_order* obj; } ;
struct combine_diff_path {TYPE_2__* parent; struct combine_diff_path* next; struct combine_diff_path* obj; } ;
struct TYPE_4__ {int path; int status; } ;


 int ALLOC_ARRAY (struct obj_order*,int) ;
 int DIFF_FORMAT_CALLBACK ;
 int DIFF_FORMAT_NAME ;
 int DIFF_FORMAT_NAME_STATUS ;
 scalar_t__ DIFF_FORMAT_NO_OUTPUT ;
 int DIFF_FORMAT_PATCH ;
 int DIFF_FORMAT_RAW ;
 int DIFF_PICKAXE_KINDS_MASK ;
 int STAT_FORMAT_MASK ;
 int clear_pathspec (int *) ;
 int commit_format_is_empty (int ) ;
 int copy_pathspec (int *,int *) ;
 int diff_flush (struct diff_options*) ;
 char* diff_line_prefix (struct diff_options*) ;
 int diff_tree_oid (int *,struct object_id const*,char*,struct diff_options*) ;
 int diffcore_order (scalar_t__) ;
 int diffcore_std (struct diff_options*) ;
 scalar_t__ filename_changed (int ) ;
 struct obj_order* find_paths_generic (struct object_id const*,struct oid_array const*,struct diff_options*,int ) ;
 struct obj_order* find_paths_multitree (struct object_id const*,struct oid_array const*,struct diff_options*) ;
 int free (struct obj_order*) ;
 int handle_combined_callback (struct diff_options*,struct obj_order*,int,int) ;
 int order_objects (scalar_t__,int ,struct obj_order*,int) ;
 int path_path ;
 int printf (char*,char*,int ) ;
 int show_log (struct rev_info*) ;
 int show_patch_diff (struct obj_order*,int,int,int ,struct rev_info*) ;
 int show_raw_diff (struct obj_order*,int,struct rev_info*) ;
 int strbuf_release (int *) ;

void diff_tree_combined(const struct object_id *oid,
   const struct oid_array *parents,
   int dense,
   struct rev_info *rev)
{
 struct diff_options *opt = &rev->diffopt;
 struct diff_options diffopts;
 struct combine_diff_path *p, *paths;
 int i, num_paths, needsep, show_log_first, num_parent = parents->nr;
 int need_generic_pathscan;


 if (!num_parent)
  return;

 show_log_first = !!rev->loginfo && !rev->no_commit_id;
 needsep = 0;
 if (show_log_first) {
  show_log(rev);

  if (rev->verbose_header && opt->output_format &&
      opt->output_format != DIFF_FORMAT_NO_OUTPUT &&
      !commit_format_is_empty(rev->commit_format))
   printf("%s%c", diff_line_prefix(opt),
          opt->line_termination);
 }

 diffopts = *opt;
 copy_pathspec(&diffopts.pathspec, &opt->pathspec);
 diffopts.flags.recursive = 1;
 diffopts.flags.allow_external = 0;
 need_generic_pathscan = opt->skip_stat_unmatch ||
   opt->flags.follow_renames ||
   opt->break_opt != -1 ||
   opt->detect_rename ||
   (opt->pickaxe_opts & DIFF_PICKAXE_KINDS_MASK) ||
   opt->filter;


 if (need_generic_pathscan) {





  paths = find_paths_generic(oid, parents, &diffopts,
        rev->combined_all_paths);
 }
 else {
  int stat_opt;
  paths = find_paths_multitree(oid, parents, &diffopts);





  stat_opt = opt->output_format & STAT_FORMAT_MASK;
  if (stat_opt) {
   diffopts.output_format = stat_opt;

   diff_tree_oid(&parents->oid[0], oid, "", &diffopts);
   diffcore_std(&diffopts);
   if (opt->orderfile)
    diffcore_order(opt->orderfile);
   diff_flush(&diffopts);
  }
 }


 for (num_paths = 0, p = paths; p; p = p->next)
  num_paths++;


 if (opt->orderfile && num_paths) {
  struct obj_order *o;

  ALLOC_ARRAY(o, num_paths);
  for (i = 0, p = paths; p; p = p->next, i++)
   o[i].obj = p;
  order_objects(opt->orderfile, path_path, o, num_paths);
  for (i = 0; i < num_paths - 1; i++) {
   p = o[i].obj;
   p->next = o[i+1].obj;
  }

  p = o[num_paths-1].obj;
  p->next = ((void*)0);
  paths = o[0].obj;
  free(o);
 }


 if (num_paths) {
  if (opt->output_format & (DIFF_FORMAT_RAW |
       DIFF_FORMAT_NAME |
       DIFF_FORMAT_NAME_STATUS)) {
   for (p = paths; p; p = p->next)
    show_raw_diff(p, num_parent, rev);
   needsep = 1;
  }
  else if (opt->output_format & STAT_FORMAT_MASK)
   needsep = 1;
  else if (opt->output_format & DIFF_FORMAT_CALLBACK)
   handle_combined_callback(opt, paths, num_parent, num_paths);

  if (opt->output_format & DIFF_FORMAT_PATCH) {
   if (needsep)
    printf("%s%c", diff_line_prefix(opt),
           opt->line_termination);
   for (p = paths; p; p = p->next)
    show_patch_diff(p, num_parent, dense,
      0, rev);
  }
 }


 while (paths) {
  struct combine_diff_path *tmp = paths;
  paths = paths->next;
  for (i = 0; i < num_parent; i++)
   if (rev->combined_all_paths &&
       filename_changed(tmp->parent[i].status))
    strbuf_release(&tmp->parent[i].path);
  free(tmp);
 }

 clear_pathspec(&diffopts.pathspec);
}
