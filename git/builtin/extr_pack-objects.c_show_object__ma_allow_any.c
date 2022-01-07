
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct object {int oid; } ;


 scalar_t__ MA_ALLOW_ANY ;
 scalar_t__ arg_missing_action ;
 int assert (int) ;
 int has_object_file (int *) ;
 int show_object (struct object*,char const*,void*) ;

__attribute__((used)) static void show_object__ma_allow_any(struct object *obj, const char *name, void *data)
{
 assert(arg_missing_action == MA_ALLOW_ANY);





 if (!has_object_file(&obj->oid))
  return;

 show_object(obj, name, data);
}
