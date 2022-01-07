
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct unpack_trees_options {int head_idx; int index_only; int merge; int fn; int * dst_index; int * src_index; } ;
struct tree_desc {int dummy; } ;
struct tree {int size; int buffer; } ;
struct TYPE_2__ {int oid; } ;
struct commit {TYPE_1__ object; } ;
typedef int opts ;


 int _ (char*) ;
 int die (int ) ;
 int discard_cache () ;
 int exit (int) ;
 int init_tree_desc (struct tree_desc*,int ,int ) ;
 int memset (struct unpack_trees_options*,int ,int) ;
 int oneway_merge ;
 int parse_tree (struct tree*) ;
 struct tree* parse_tree_indirect (int *) ;
 int the_index ;
 scalar_t__ unpack_trees (int,struct tree_desc*,struct unpack_trees_options*) ;

__attribute__((used)) static void create_base_index(const struct commit *current_head)
{
 struct tree *tree;
 struct unpack_trees_options opts;
 struct tree_desc t;

 if (!current_head) {
  discard_cache();
  return;
 }

 memset(&opts, 0, sizeof(opts));
 opts.head_idx = 1;
 opts.index_only = 1;
 opts.merge = 1;
 opts.src_index = &the_index;
 opts.dst_index = &the_index;

 opts.fn = oneway_merge;
 tree = parse_tree_indirect(&current_head->object.oid);
 if (!tree)
  die(_("failed to unpack HEAD tree object"));
 parse_tree(tree);
 init_tree_desc(&t, tree->buffer, tree->size);
 if (unpack_trees(1, &t, &opts))
  exit(128);
}
