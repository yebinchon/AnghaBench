
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct object {int dummy; } ;


 int idnums ;
 void* lookup_decoration (int *,struct object*) ;
 int ptr_to_mark (void*) ;

__attribute__((used)) static int get_object_mark(struct object *object)
{
 void *decoration = lookup_decoration(&idnums, object);
 if (!decoration)
  return 0;
 return ptr_to_mark(decoration);
}
