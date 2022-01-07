
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tree_desc {int dummy; } ;
struct pbase_tree_cache {int tree_size; int tree_data; } ;
struct name_entry {int oid; int mode; int path; } ;


 scalar_t__ S_ISDIR (int ) ;
 scalar_t__ S_ISGITLINK (int ) ;
 int add_object_entry (int *,int ,char const*,int) ;
 int init_tree_desc (struct tree_desc*,int ,int ) ;
 int memcmp (char const*,int ,int) ;
 int name_cmp_len (char const*) ;
 int object_type (int ) ;
 struct pbase_tree_cache* pbase_tree_get (int *) ;
 int pbase_tree_put (struct pbase_tree_cache*) ;
 scalar_t__ tree_entry (struct tree_desc*,struct name_entry*) ;
 int tree_entry_len (struct name_entry*) ;

__attribute__((used)) static void add_pbase_object(struct tree_desc *tree,
        const char *name,
        int cmplen,
        const char *fullname)
{
 struct name_entry entry;
 int cmp;

 while (tree_entry(tree,&entry)) {
  if (S_ISGITLINK(entry.mode))
   continue;
  cmp = tree_entry_len(&entry) != cmplen ? 1 :
        memcmp(name, entry.path, cmplen);
  if (cmp > 0)
   continue;
  if (cmp < 0)
   return;
  if (name[cmplen] != '/') {
   add_object_entry(&entry.oid,
      object_type(entry.mode),
      fullname, 1);
   return;
  }
  if (S_ISDIR(entry.mode)) {
   struct tree_desc sub;
   struct pbase_tree_cache *tree;
   const char *down = name+cmplen+1;
   int downlen = name_cmp_len(down);

   tree = pbase_tree_get(&entry.oid);
   if (!tree)
    return;
   init_tree_desc(&sub, tree->tree_data, tree->tree_size);

   add_pbase_object(&sub, down, downlen, fullname);
   pbase_tree_put(tree);
  }
 }
}
