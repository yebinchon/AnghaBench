
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct object_id {int dummy; } ;
struct object {int flags; } ;
typedef enum object_type { ____Placeholder_object_type } object_type ;


 int ERROR_OBJECT ;
 int HAS_OBJ ;
 int REACHABLE ;
 int SEEN ;
 int _ (char*) ;
 int error (int ,int ) ;
 int errors_found ;
 int fsck_obj (struct object*,void*,unsigned long) ;
 int oid_to_hex (struct object_id const*) ;
 struct object* parse_object_buffer (int ,struct object_id const*,int,unsigned long,void*,int*) ;
 int the_repository ;

__attribute__((used)) static int fsck_obj_buffer(const struct object_id *oid, enum object_type type,
      unsigned long size, void *buffer, int *eaten)
{




 struct object *obj;
 obj = parse_object_buffer(the_repository, oid, type, size, buffer,
      eaten);
 if (!obj) {
  errors_found |= ERROR_OBJECT;
  return error(_("%s: object corrupt or missing"),
        oid_to_hex(oid));
 }
 obj->flags &= ~(REACHABLE | SEEN);
 obj->flags |= HAS_OBJ;
 return fsck_obj(obj, buffer, size);
}
