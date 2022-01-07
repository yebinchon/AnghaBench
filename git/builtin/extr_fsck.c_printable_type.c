
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct object {scalar_t__ type; int oid; } ;
typedef enum object_type { ____Placeholder_object_type } object_type ;


 scalar_t__ OBJ_NONE ;
 char* _ (char*) ;
 int object_as_type (int ,struct object*,int,int ) ;
 int oid_object_info (int ,int *,int *) ;
 int the_repository ;
 char* type_name (scalar_t__) ;

__attribute__((used)) static const char *printable_type(struct object *obj)
{
 const char *ret;

 if (obj->type == OBJ_NONE) {
  enum object_type type = oid_object_info(the_repository,
       &obj->oid, ((void*)0));
  if (type > 0)
   object_as_type(the_repository, obj, type, 0);
 }

 ret = type_name(obj->type);
 if (!ret)
  ret = _("unknown");

 return ret;
}
