
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct string_list {int dummy; } ;
struct object_id {int dummy; } ;


 int string_list_append (struct string_list*,char*) ;
 char* xstrfmt (char*,char const*) ;

__attribute__((used)) static int mark_for_removal(const char *refname, const struct object_id *oid,
       int flag, void *cb_data)
{
 struct string_list *refs = cb_data;
 char *ref = xstrfmt("refs/bisect%s", refname);
 string_list_append(refs, ref);
 return 0;
}
