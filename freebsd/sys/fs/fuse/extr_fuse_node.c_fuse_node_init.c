
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int M_WAITOK ;
 int counter_u64_alloc (int ) ;
 int fuse_node_count ;

void
fuse_node_init(void)
{
 fuse_node_count = counter_u64_alloc(M_WAITOK);
}
