
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct rev_list_info {TYPE_1__* revs; } ;
struct object {scalar_t__ type; int oid; int parsed; } ;
struct TYPE_2__ {scalar_t__ verify_objects; } ;


 scalar_t__ OBJ_COMMIT ;
 int finish_object__ma (struct object*) ;
 scalar_t__ oid_object_info_extended (int ,int *,int *,int ) ;
 int parse_object (int ,int *) ;
 int the_repository ;

__attribute__((used)) static int finish_object(struct object *obj, const char *name, void *cb_data)
{
 struct rev_list_info *info = cb_data;
 if (oid_object_info_extended(the_repository, &obj->oid, ((void*)0), 0) < 0) {
  finish_object__ma(obj);
  return 1;
 }
 if (info->revs->verify_objects && !obj->parsed && obj->type != OBJ_COMMIT)
  parse_object(the_repository, &obj->oid);
 return 0;
}
