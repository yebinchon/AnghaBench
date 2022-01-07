
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct object_id {int dummy; } ;
struct object {int flags; scalar_t__ type; int oid; } ;
struct fsck_options {int walk; } ;
typedef enum object_type { ____Placeholder_object_type } object_type ;


 struct fsck_options FSCK_OPTIONS_DEFAULT ;
 int HAS_OBJ ;
 scalar_t__ OBJ_NONE ;
 int REACHABLE ;
 int fsck_walk (struct object*,int *,struct fsck_options*) ;
 struct object* lookup_object (int ,struct object_id const*) ;
 int mark_used ;
 int object_as_type (int ,struct object*,int,int ) ;
 int oid_object_info (int ,int *,int *) ;
 int the_repository ;

__attribute__((used)) static void mark_unreachable_referents(const struct object_id *oid)
{
 struct fsck_options options = FSCK_OPTIONS_DEFAULT;
 struct object *obj = lookup_object(the_repository, oid);

 if (!obj || !(obj->flags & HAS_OBJ))
  return;
 if (obj->flags & REACHABLE)
  return;





 if (obj->type == OBJ_NONE) {
  enum object_type type = oid_object_info(the_repository,
       &obj->oid, ((void*)0));
  if (type > 0)
   object_as_type(the_repository, obj, type, 0);
 }

 options.walk = mark_used;
 fsck_walk(obj, ((void*)0), &options);
}
