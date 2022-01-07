
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct object_id {int dummy; } ;
typedef enum object_type { ____Placeholder_object_type } object_type ;


 int _ (char*) ;
 int add_object_entry (struct object_id const*,int,char*,int ) ;
 int oid_object_info (int ,struct object_id const*,int *) ;
 int the_repository ;
 int warning (int ,char const*) ;

__attribute__((used)) static int add_loose_object(const struct object_id *oid, const char *path,
       void *data)
{
 enum object_type type = oid_object_info(the_repository, oid, ((void*)0));

 if (type < 0) {
  warning(_("loose object at %s could not be examined"), path);
  return 0;
 }

 add_object_entry(oid, type, "", 0);
 return 0;
}
