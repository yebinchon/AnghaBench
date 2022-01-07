
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct repository {TYPE_1__* parsed_objects; } ;
struct commit_buffer {void const* buffer; } ;
struct commit {int dummy; } ;
struct TYPE_2__ {int buffer_slab; } ;


 struct commit_buffer* buffer_slab_peek (int ,struct commit const*) ;
 int free (void*) ;

void repo_unuse_commit_buffer(struct repository *r,
         const struct commit *commit,
         const void *buffer)
{
 struct commit_buffer *v = buffer_slab_peek(
  r->parsed_objects->buffer_slab, commit);
 if (!(v && v->buffer == buffer))
  free((void *)buffer);
}
