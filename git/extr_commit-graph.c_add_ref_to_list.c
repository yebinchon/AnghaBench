
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct string_list {int dummy; } ;
struct object_id {int dummy; } ;


 int oid_to_hex (struct object_id const*) ;
 int string_list_append (struct string_list*,int ) ;

__attribute__((used)) static int add_ref_to_list(const char *refname,
      const struct object_id *oid,
      int flags, void *cb_data)
{
 struct string_list *list = (struct string_list *)cb_data;

 string_list_append(list, oid_to_hex(oid));
 return 0;
}
