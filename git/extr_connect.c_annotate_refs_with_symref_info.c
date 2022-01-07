
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct string_list_item {scalar_t__ util; } ;
struct string_list {int dummy; } ;
struct ref {int symref; int name; struct ref* next; } ;


 struct string_list STRING_LIST_INIT_DUP ;
 char* parse_feature_value (char const*,char*,int*) ;
 int parse_one_symref_info (struct string_list*,char const*,int) ;
 char* server_capabilities_v1 ;
 int string_list_clear (struct string_list*,int ) ;
 struct string_list_item* string_list_lookup (struct string_list*,int ) ;
 int string_list_sort (struct string_list*) ;
 int xstrdup (char*) ;

__attribute__((used)) static void annotate_refs_with_symref_info(struct ref *ref)
{
 struct string_list symref = STRING_LIST_INIT_DUP;
 const char *feature_list = server_capabilities_v1;

 while (feature_list) {
  int len;
  const char *val;

  val = parse_feature_value(feature_list, "symref", &len);
  if (!val)
   break;
  parse_one_symref_info(&symref, val, len);
  feature_list = val + 1;
 }
 string_list_sort(&symref);

 for (; ref; ref = ref->next) {
  struct string_list_item *item;
  item = string_list_lookup(&symref, ref->name);
  if (!item)
   continue;
  ref->symref = xstrdup((char *)item->util);
 }
 string_list_clear(&symref, 0);
}
