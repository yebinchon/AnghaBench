
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int NMA_LOCK_INIT (int *) ;
 int NM_MTX_INIT (int ) ;
 int netmap_mem_get (int *) ;
 int nm_mem ;
 int nm_mem_ext_list_lock ;
 int nm_mem_list_lock ;

int
netmap_mem_init(void)
{
 NM_MTX_INIT(nm_mem_list_lock);
 NMA_LOCK_INIT(&nm_mem);
 netmap_mem_get(&nm_mem);



 return (0);
}
