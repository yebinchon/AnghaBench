
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct object {int dummy; } ;
struct obj_buffer {int dummy; } ;


 struct obj_buffer* lookup_decoration (int *,struct object*) ;
 int obj_decorate ;

__attribute__((used)) static struct obj_buffer *lookup_object_buffer(struct object *base)
{
 return lookup_decoration(&obj_decorate, base);
}
