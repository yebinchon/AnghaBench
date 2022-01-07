
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct buffer_slab {int dummy; } ;


 int clear_buffer_slab (struct buffer_slab*) ;
 int free (struct buffer_slab*) ;

void free_commit_buffer_slab(struct buffer_slab *bs)
{
 clear_buffer_slab(bs);
 free(bs);
}
