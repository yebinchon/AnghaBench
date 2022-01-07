
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct object {int flags; } ;
struct TYPE_3__ {int flags; } ;
struct blob {TYPE_1__ object; } ;
typedef enum object_type { ____Placeholder_object_type } object_type ;
struct TYPE_4__ {struct object* obj; int oid; } ;


 int FLAG_OPEN ;
 int FLAG_WRITTEN ;
 int OBJ_BLOB ;
 int add_object_buffer (struct object*,void*,unsigned long) ;
 int added_object (unsigned int,int,void*,unsigned long) ;
 int die (char*,...) ;
 int free (void*) ;
 int hash_object_file (void*,unsigned long,int ,int *) ;
 struct blob* lookup_blob (int ,int *) ;
 TYPE_2__* obj_list ;
 struct object* parse_object_buffer (int ,int *,int,unsigned long,void*,int*) ;
 int strict ;
 int the_repository ;
 int type_name (int) ;
 scalar_t__ write_object_file (void*,unsigned long,int ,int *) ;

__attribute__((used)) static void write_object(unsigned nr, enum object_type type,
    void *buf, unsigned long size)
{
 if (!strict) {
  if (write_object_file(buf, size, type_name(type),
          &obj_list[nr].oid) < 0)
   die("failed to write object");
  added_object(nr, type, buf, size);
  free(buf);
  obj_list[nr].obj = ((void*)0);
 } else if (type == OBJ_BLOB) {
  struct blob *blob;
  if (write_object_file(buf, size, type_name(type),
          &obj_list[nr].oid) < 0)
   die("failed to write object");
  added_object(nr, type, buf, size);
  free(buf);

  blob = lookup_blob(the_repository, &obj_list[nr].oid);
  if (blob)
   blob->object.flags |= FLAG_WRITTEN;
  else
   die("invalid blob object");
  obj_list[nr].obj = ((void*)0);
 } else {
  struct object *obj;
  int eaten;
  hash_object_file(buf, size, type_name(type), &obj_list[nr].oid);
  added_object(nr, type, buf, size);
  obj = parse_object_buffer(the_repository, &obj_list[nr].oid,
       type, size, buf,
       &eaten);
  if (!obj)
   die("invalid %s", type_name(type));
  add_object_buffer(obj, buf, size);
  obj->flags |= FLAG_OPEN;
  obj_list[nr].obj = obj;
 }
}
