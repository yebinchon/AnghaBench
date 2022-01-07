
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pbase_tree_cache {int ref; int temporary; void* tree_data; unsigned long tree_size; int oid; } ;
struct object_id {int dummy; } ;
typedef enum object_type { ____Placeholder_object_type } object_type ;


 int OBJ_TREE ;
 int free (void*) ;
 int oidcpy (int *,struct object_id const*) ;
 scalar_t__ oideq (int *,struct object_id const*) ;
 struct pbase_tree_cache** pbase_tree_cache ;
 int pbase_tree_cache_ix (struct object_id const*) ;
 int pbase_tree_cache_ix_incr (int) ;
 void* read_object_file (struct object_id const*,int*,unsigned long*) ;
 struct pbase_tree_cache* xmalloc (int) ;

__attribute__((used)) static struct pbase_tree_cache *pbase_tree_get(const struct object_id *oid)
{
 struct pbase_tree_cache *ent, *nent;
 void *data;
 unsigned long size;
 enum object_type type;
 int neigh;
 int my_ix = pbase_tree_cache_ix(oid);
 int available_ix = -1;





 for (neigh = 0; neigh < 8; neigh++) {
  ent = pbase_tree_cache[my_ix];
  if (ent && oideq(&ent->oid, oid)) {
   ent->ref++;
   return ent;
  }
  else if (((available_ix < 0) && (!ent || !ent->ref)) ||
    ((0 <= available_ix) &&
     (!ent && pbase_tree_cache[available_ix])))
   available_ix = my_ix;
  if (!ent)
   break;
  my_ix = pbase_tree_cache_ix_incr(my_ix);
 }




 data = read_object_file(oid, &type, &size);
 if (!data)
  return ((void*)0);
 if (type != OBJ_TREE) {
  free(data);
  return ((void*)0);
 }



 if (available_ix < 0)
  ent = ((void*)0);
 else {
  ent = pbase_tree_cache[available_ix];
  my_ix = available_ix;
 }

 if (!ent) {
  nent = xmalloc(sizeof(*nent));
  nent->temporary = (available_ix < 0);
 }
 else {

  free(ent->tree_data);
  nent = ent;
 }
 oidcpy(&nent->oid, oid);
 nent->tree_data = data;
 nent->tree_size = size;
 nent->ref = 1;
 if (!nent->temporary)
  pbase_tree_cache[my_ix] = nent;
 return nent;
}
