
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct object_id {int dummy; } ;


 int _ (char*) ;
 scalar_t__ delete_ref (int *,char const*,struct object_id const*,int ) ;
 int printf_ln (int ,char const*) ;

__attribute__((used)) static int delete_replace_ref(const char *name, const char *ref,
         const struct object_id *oid)
{
 if (delete_ref(((void*)0), ref, oid, 0))
  return 1;
 printf_ln(_("Deleted replace ref '%s'"), name);
 return 0;
}
