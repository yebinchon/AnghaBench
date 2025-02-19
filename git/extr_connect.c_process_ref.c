
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ref {struct ref* next; int old_oid; } ;
struct oid_array {int dummy; } ;
struct object_id {int dummy; } ;


 int _ (char*) ;
 struct ref* alloc_ref (char const*) ;
 int check_no_capabilities (char const*,int) ;
 scalar_t__ check_ref (char const*,unsigned int) ;
 int die (int ) ;
 int oid_array_append (struct oid_array*,struct object_id*) ;
 int oidcpy (int *,struct object_id*) ;
 scalar_t__ parse_oid_hex (char const*,struct object_id*,char const**) ;
 int strcmp (char const*,char*) ;

__attribute__((used)) static int process_ref(const char *line, int len, struct ref ***list,
         unsigned int flags, struct oid_array *extra_have)
{
 struct object_id old_oid;
 const char *name;

 if (parse_oid_hex(line, &old_oid, &name))
  return 0;
 if (*name != ' ')
  return 0;
 name++;

 if (extra_have && !strcmp(name, ".have")) {
  oid_array_append(extra_have, &old_oid);
 } else if (!strcmp(name, "capabilities^{}")) {
  die(_("protocol error: unexpected capabilities^{}"));
 } else if (check_ref(name, flags)) {
  struct ref *ref = alloc_ref(name);
  oidcpy(&ref->old_oid, &old_oid);
  **list = ref;
  *list = &ref->next;
 }
 check_no_capabilities(line, len);
 return 1;
}
