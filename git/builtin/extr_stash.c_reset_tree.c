
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct unpack_trees_options {int head_idx; int merge; int reset; int update; int fn; int * dst_index; int * src_index; } ;
struct tree_desc {int dummy; } ;
struct tree {int size; int buffer; } ;
struct object_id {int dummy; } ;
struct lock_file {int dummy; } ;
typedef int opts ;


 int COMMIT_LOCK ;
 int LOCK_DIE_ON_ERROR ;
 struct lock_file LOCK_INIT ;
 int MAX_UNPACK_TREES ;
 int REFRESH_QUIET ;
 int _ (char*) ;
 int error (int ) ;
 int hold_locked_index (struct lock_file*,int ) ;
 int init_tree_desc (struct tree_desc*,int ,int ) ;
 int memset (struct unpack_trees_options*,int ,int) ;
 int oneway_merge ;
 scalar_t__ parse_tree (struct tree*) ;
 struct tree* parse_tree_indirect (struct object_id*) ;
 int read_cache_preload (int *) ;
 scalar_t__ refresh_cache (int ) ;
 int the_index ;
 scalar_t__ unpack_trees (int,struct tree_desc*,struct unpack_trees_options*) ;
 scalar_t__ write_locked_index (int *,struct lock_file*,int ) ;

__attribute__((used)) static int reset_tree(struct object_id *i_tree, int update, int reset)
{
 int nr_trees = 1;
 struct unpack_trees_options opts;
 struct tree_desc t[MAX_UNPACK_TREES];
 struct tree *tree;
 struct lock_file lock_file = LOCK_INIT;

 read_cache_preload(((void*)0));
 if (refresh_cache(REFRESH_QUIET))
  return -1;

 hold_locked_index(&lock_file, LOCK_DIE_ON_ERROR);

 memset(&opts, 0, sizeof(opts));

 tree = parse_tree_indirect(i_tree);
 if (parse_tree(tree))
  return -1;

 init_tree_desc(t, tree->buffer, tree->size);

 opts.head_idx = 1;
 opts.src_index = &the_index;
 opts.dst_index = &the_index;
 opts.merge = 1;
 opts.reset = reset;
 opts.update = update;
 opts.fn = oneway_merge;

 if (unpack_trees(nr_trees, t, &opts))
  return -1;

 if (write_locked_index(&the_index, &lock_file, COMMIT_LOCK))
  return error(_("unable to write new index file"));

 return 0;
}
