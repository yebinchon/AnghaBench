
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tree_desc {int dummy; } ;
struct TYPE_2__ {int tree_size; int tree_data; int oid; } ;
struct pbase_tree {TYPE_1__ pcache; struct pbase_tree* next; } ;


 int OBJ_TREE ;
 int add_object_entry (int *,int ,int *,int) ;
 int add_pbase_object (struct tree_desc*,char const*,int,char const*) ;
 scalar_t__ check_pbase_path (unsigned int) ;
 int init_tree_desc (struct tree_desc*,int ,int ) ;
 int name_cmp_len (char const*) ;
 int num_preferred_base ;
 unsigned int pack_name_hash (char const*) ;
 struct pbase_tree* pbase_tree ;

__attribute__((used)) static void add_preferred_base_object(const char *name)
{
 struct pbase_tree *it;
 int cmplen;
 unsigned hash = pack_name_hash(name);

 if (!num_preferred_base || check_pbase_path(hash))
  return;

 cmplen = name_cmp_len(name);
 for (it = pbase_tree; it; it = it->next) {
  if (cmplen == 0) {
   add_object_entry(&it->pcache.oid, OBJ_TREE, ((void*)0), 1);
  }
  else {
   struct tree_desc tree;
   init_tree_desc(&tree, it->pcache.tree_data, it->pcache.tree_size);
   add_pbase_object(&tree, name, cmplen, name);
  }
 }
}
