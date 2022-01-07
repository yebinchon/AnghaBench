
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct unpack_trees_options {int head_idx; int update; int skip_unmerged; int reset; int merge; int * dst_index; int * src_index; int verbose_update; int fn; } ;
struct tree_desc {int dummy; } ;
struct tree {int size; int buffer; } ;
struct checkout_opts {int show_progress; } ;
typedef int opts ;


 int init_tree_desc (struct tree_desc*,int ,int ) ;
 int memset (struct unpack_trees_options*,int ,int) ;
 int oneway_merge ;
 int parse_tree (struct tree*) ;
 int the_index ;
 int unpack_trees (int,struct tree_desc*,struct unpack_trees_options*) ;

__attribute__((used)) static int reset_tree(struct tree *tree, const struct checkout_opts *o,
        int worktree, int *writeout_error)
{
 struct unpack_trees_options opts;
 struct tree_desc tree_desc;

 memset(&opts, 0, sizeof(opts));
 opts.head_idx = -1;
 opts.update = worktree;
 opts.skip_unmerged = !worktree;
 opts.reset = 1;
 opts.merge = 1;
 opts.fn = oneway_merge;
 opts.verbose_update = o->show_progress;
 opts.src_index = &the_index;
 opts.dst_index = &the_index;
 parse_tree(tree);
 init_tree_desc(&tree_desc, tree->buffer, tree->size);
 switch (unpack_trees(1, &tree_desc, &opts)) {
 case -2:
  *writeout_error = 1;







 case 0:
  return 0;
 default:
  return 128;
 }
}
