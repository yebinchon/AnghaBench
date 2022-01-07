
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct parsed_object_pool {int buffer_slab; } ;
struct commit_buffer {scalar_t__ size; int buffer; } ;
struct commit {int dummy; } ;


 int FREE_AND_NULL (int ) ;
 struct commit_buffer* buffer_slab_peek (int ,struct commit*) ;

void free_commit_buffer(struct parsed_object_pool *pool, struct commit *commit)
{
 struct commit_buffer *v = buffer_slab_peek(
  pool->buffer_slab, commit);
 if (v) {
  FREE_AND_NULL(v->buffer);
  v->size = 0;
 }
}
