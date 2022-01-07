
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ng_type {scalar_t__ version; int refs; int name; } ;


 int EEXIST ;
 int EINVAL ;
 int LIST_INSERT_HEAD (int *,struct ng_type*,int ) ;
 scalar_t__ NG_ABI_VERSION ;
 size_t const NG_TYPESIZ ;
 int TRAP_ERROR () ;
 int TYPELIST_WLOCK () ;
 int TYPELIST_WUNLOCK () ;
 int * ng_findtype (int ) ;
 int ng_typelist ;
 int printf (char*) ;
 size_t strlen (int ) ;
 int types ;

int
ng_newtype(struct ng_type *tp)
{
 const size_t namelen = strlen(tp->name);


 if ((tp->version != NG_ABI_VERSION) || (namelen == 0) ||
     (namelen >= NG_TYPESIZ)) {
  TRAP_ERROR();
  if (tp->version != NG_ABI_VERSION) {
   printf("Netgraph: Node type rejected. ABI mismatch. "
       "Suggest recompile\n");
  }
  return (EINVAL);
 }


 if (ng_findtype(tp->name) != ((void*)0)) {
  TRAP_ERROR();
  return (EEXIST);
 }


 TYPELIST_WLOCK();
 LIST_INSERT_HEAD(&ng_typelist, tp, types);
 tp->refs = 1;
 TYPELIST_WUNLOCK();
 return (0);
}
