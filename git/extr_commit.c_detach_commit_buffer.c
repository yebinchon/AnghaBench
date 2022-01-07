
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct commit_buffer {unsigned long size; int * buffer; } ;
struct commit {int dummy; } ;
struct TYPE_4__ {TYPE_1__* parsed_objects; } ;
struct TYPE_3__ {int buffer_slab; } ;


 struct commit_buffer* buffer_slab_peek (int ,struct commit*) ;
 TYPE_2__* the_repository ;

const void *detach_commit_buffer(struct commit *commit, unsigned long *sizep)
{
 struct commit_buffer *v = buffer_slab_peek(
  the_repository->parsed_objects->buffer_slab, commit);
 void *ret;

 if (!v) {
  if (sizep)
   *sizep = 0;
  return ((void*)0);
 }
 ret = v->buffer;
 if (sizep)
  *sizep = v->size;

 v->buffer = ((void*)0);
 v->size = 0;
 return ret;
}
