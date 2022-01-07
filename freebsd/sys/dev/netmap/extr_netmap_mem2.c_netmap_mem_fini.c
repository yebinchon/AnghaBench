
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int netmap_mem_put (int *) ;
 int nm_mem ;

void
netmap_mem_fini(void)
{
 netmap_mem_put(&nm_mem);
}
