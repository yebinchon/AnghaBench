
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct object {int oid; } ;
struct obj_buffer {char* buffer; unsigned long size; } ;


 scalar_t__ add_decoration (int *,struct object*,struct obj_buffer*) ;
 int die (char*,int ) ;
 int obj_decorate ;
 int oid_to_hex (int *) ;
 struct obj_buffer* xcalloc (int,int) ;

__attribute__((used)) static void add_object_buffer(struct object *object, char *buffer, unsigned long size)
{
 struct obj_buffer *obj;
 obj = xcalloc(1, sizeof(struct obj_buffer));
 obj->buffer = buffer;
 obj->size = size;
 if (add_decoration(&obj_decorate, object, obj))
  die("object %s tried to add buffer twice!", oid_to_hex(&object->oid));
}
