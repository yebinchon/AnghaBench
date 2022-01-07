
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct string_list {int dummy; } ;
struct object_id {int dummy; } ;


 int string_list_insert (struct string_list*,char const*) ;

__attribute__((used)) static int add_existing(const char *refname, const struct object_id *oid,
   int flag, void *cbdata)
{
 struct string_list *list = (struct string_list *)cbdata;
 string_list_insert(list, refname);
 return 0;
}
