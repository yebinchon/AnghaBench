
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct netmap_mem_d {int refcount; } ;


 int NM_DBG_REFC (struct netmap_mem_d*,char const*,int) ;
 int NM_MTX_LOCK (int ) ;
 int NM_MTX_UNLOCK (int ) ;
 int nm_mem_list_lock ;

struct netmap_mem_d *
__netmap_mem_get(struct netmap_mem_d *nmd, const char *func, int line)
{
 NM_MTX_LOCK(nm_mem_list_lock);
 nmd->refcount++;
 NM_DBG_REFC(nmd, func, line);
 NM_MTX_UNLOCK(nm_mem_list_lock);
 return nmd;
}
