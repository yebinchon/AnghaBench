
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct unpack_trees_options {int head_idx; int update; int verbose_update; int trivial_merges_only; int merge; int fn; int * dst_index; int * src_index; } ;
struct tree_desc {int dummy; } ;
struct tree {int size; int buffer; } ;
struct object_id {int dummy; } ;
typedef int opts ;


 int MAX_UNPACK_TREES ;
 int active_cache_tree ;
 int cache_tree_free (int *) ;
 int init_tree_desc (struct tree_desc*,int ,int ) ;
 int memset (struct unpack_trees_options*,int ,int) ;
 int parse_tree (struct tree*) ;
 struct tree* parse_tree_indirect (struct object_id*) ;
 int the_index ;
 int threeway_merge ;
 scalar_t__ unpack_trees (int,struct tree_desc*,struct unpack_trees_options*) ;

__attribute__((used)) static int read_tree_trivial(struct object_id *common, struct object_id *head,
        struct object_id *one)
{
 int i, nr_trees = 0;
 struct tree *trees[MAX_UNPACK_TREES];
 struct tree_desc t[MAX_UNPACK_TREES];
 struct unpack_trees_options opts;

 memset(&opts, 0, sizeof(opts));
 opts.head_idx = 2;
 opts.src_index = &the_index;
 opts.dst_index = &the_index;
 opts.update = 1;
 opts.verbose_update = 1;
 opts.trivial_merges_only = 1;
 opts.merge = 1;
 trees[nr_trees] = parse_tree_indirect(common);
 if (!trees[nr_trees++])
  return -1;
 trees[nr_trees] = parse_tree_indirect(head);
 if (!trees[nr_trees++])
  return -1;
 trees[nr_trees] = parse_tree_indirect(one);
 if (!trees[nr_trees++])
  return -1;
 opts.fn = threeway_merge;
 cache_tree_free(&active_cache_tree);
 for (i = 0; i < nr_trees; i++) {
  parse_tree(trees[i]);
  init_tree_desc(t+i, trees[i]->buffer, trees[i]->size);
 }
 if (unpack_trees(nr_trees, t, &opts))
  return -1;
 return 0;
}
