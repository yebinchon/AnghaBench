
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct malloc_type {int dummy; } ;
struct buf_ring {int dummy; } ;


 int free (struct buf_ring*,struct malloc_type*) ;

void
buf_ring_free(struct buf_ring *br, struct malloc_type *type)
{
 free(br, type);
}
