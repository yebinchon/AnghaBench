
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct buffer_slab {int dummy; } ;


 int init_buffer_slab (struct buffer_slab*) ;
 struct buffer_slab* xmalloc (int) ;

struct buffer_slab *allocate_commit_buffer_slab(void)
{
 struct buffer_slab *bs = xmalloc(sizeof(*bs));
 init_buffer_slab(bs);
 return bs;
}
