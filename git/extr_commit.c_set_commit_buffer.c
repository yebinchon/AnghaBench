
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct repository {TYPE_1__* parsed_objects; } ;
struct commit_buffer {unsigned long size; void* buffer; } ;
struct commit {int dummy; } ;
struct TYPE_2__ {int buffer_slab; } ;


 struct commit_buffer* buffer_slab_at (int ,struct commit*) ;

void set_commit_buffer(struct repository *r, struct commit *commit, void *buffer, unsigned long size)
{
 struct commit_buffer *v = buffer_slab_at(
  r->parsed_objects->buffer_slab, commit);
 v->buffer = buffer;
 v->size = size;
}
