
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;
struct obj {int oid; int type; } ;


 struct obj* calloc (int,int) ;
 int free (struct obj*) ;
 int noids ;
 struct obj** oidtbl ;
 struct obj** realloc (struct obj**,int) ;

__attribute__((used)) static struct obj *
obj_alloc(u_int type)
{
 struct obj **newtbl, *obj;
 int oid;

 obj = calloc(1, sizeof(struct obj));
 obj->type = type;

 for (oid = 0; oid < noids; oid++) {
  if (oidtbl[oid] == 0)
   break;
 }
 if (oid == noids) {
  newtbl = realloc(oidtbl, sizeof(struct obj *) * (noids + 1));
  if (newtbl == ((void*)0)) {
   free(obj);
   return (((void*)0));
  }
  oidtbl = newtbl;
  noids++;
 }
 oidtbl[oid] = obj;
 obj->oid = oid;
 return (obj);
}
