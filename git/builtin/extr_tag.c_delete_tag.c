
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct object_id {int dummy; } ;


 int DEFAULT_ABBREV ;
 char* _ (char*) ;
 scalar_t__ delete_ref (int *,char const*,struct object_id const*,int ) ;
 char* find_unique_abbrev (struct object_id const*,int ) ;
 int printf (char*,char const*,char*) ;

__attribute__((used)) static int delete_tag(const char *name, const char *ref,
        const struct object_id *oid, const void *cb_data)
{
 if (delete_ref(((void*)0), ref, oid, 0))
  return 1;
 printf(_("Deleted tag '%s' (was %s)\n"), name,
        find_unique_abbrev(oid, DEFAULT_ABBREV));
 return 0;
}
