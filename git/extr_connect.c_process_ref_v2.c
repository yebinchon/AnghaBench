
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct string_list {int nr; TYPE_1__* items; } ;
struct ref {struct ref* next; int old_oid; int name; int symref; } ;
struct object_id {int dummy; } ;
struct TYPE_2__ {char const* string; } ;


 struct string_list STRING_LIST_INIT_DUP ;
 struct ref* alloc_ref (char*) ;
 int free (char*) ;
 int oidcpy (int *,struct object_id*) ;
 scalar_t__ parse_oid_hex (char const*,struct object_id*,char const**) ;
 scalar_t__ skip_prefix (char const*,char*,char const**) ;
 int string_list_clear (struct string_list*,int ) ;
 int string_list_split (struct string_list*,char const*,char,int) ;
 int xstrdup (char const*) ;
 char* xstrfmt (char*,int ) ;

__attribute__((used)) static int process_ref_v2(const char *line, struct ref ***list)
{
 int ret = 1;
 int i = 0;
 struct object_id old_oid;
 struct ref *ref;
 struct string_list line_sections = STRING_LIST_INIT_DUP;
 const char *end;







 if (string_list_split(&line_sections, line, ' ', -1) < 2) {
  ret = 0;
  goto out;
 }

 if (parse_oid_hex(line_sections.items[i++].string, &old_oid, &end) ||
     *end) {
  ret = 0;
  goto out;
 }

 ref = alloc_ref(line_sections.items[i++].string);

 oidcpy(&ref->old_oid, &old_oid);
 **list = ref;
 *list = &ref->next;

 for (; i < line_sections.nr; i++) {
  const char *arg = line_sections.items[i].string;
  if (skip_prefix(arg, "symref-target:", &arg))
   ref->symref = xstrdup(arg);

  if (skip_prefix(arg, "peeled:", &arg)) {
   struct object_id peeled_oid;
   char *peeled_name;
   struct ref *peeled;
   if (parse_oid_hex(arg, &peeled_oid, &end) || *end) {
    ret = 0;
    goto out;
   }

   peeled_name = xstrfmt("%s^{}", ref->name);
   peeled = alloc_ref(peeled_name);

   oidcpy(&peeled->old_oid, &peeled_oid);
   **list = peeled;
   *list = &peeled->next;

   free(peeled_name);
  }
 }

out:
 string_list_clear(&line_sections, 0);
 return ret;
}
