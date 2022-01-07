
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct object_id {int dummy; } ;
struct object {int type; } ;
struct obj_buffer {int size; int buffer; } ;


 struct object* lookup_object (int ,struct object_id const*) ;
 struct obj_buffer* lookup_object_buffer (struct object*) ;
 int resolve_delta (unsigned int,int ,int ,int ,void*,unsigned long) ;
 int the_repository ;

__attribute__((used)) static int resolve_against_held(unsigned nr, const struct object_id *base,
    void *delta_data, unsigned long delta_size)
{
 struct object *obj;
 struct obj_buffer *obj_buffer;
 obj = lookup_object(the_repository, base);
 if (!obj)
  return 0;
 obj_buffer = lookup_object_buffer(obj);
 if (!obj_buffer)
  return 0;
 resolve_delta(nr, obj->type, obj_buffer->buffer,
        obj_buffer->size, delta_data, delta_size);
 return 1;
}
