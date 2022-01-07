
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ref {int old_oid; } ;
struct object_id {int dummy; } ;


 int ALLOC_GROW (struct ref**,int,int) ;
 struct ref* alloc_ref (char const*) ;
 int oidclr (struct object_id*) ;
 int oidcpy (int *,struct object_id*) ;
 int parse_oid_hex (char const*,struct object_id*,char const**) ;

__attribute__((used)) static void add_sought_entry(struct ref ***sought, int *nr, int *alloc,
        const char *name)
{
 struct ref *ref;
 struct object_id oid;
 const char *p;

 if (!parse_oid_hex(name, &oid, &p)) {
  if (*p == ' ') {

   name = p + 1;
  } else if (*p == '\0') {
   ;
  } else {

   oidclr(&oid);
  }
 } else {

  oidclr(&oid);
 }

 ref = alloc_ref(name);
 oidcpy(&ref->old_oid, &oid);
 (*nr)++;
 ALLOC_GROW(*sought, *nr, *alloc);
 (*sought)[*nr - 1] = ref;
}
