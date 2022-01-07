
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct netmap_mem_d {scalar_t__ refcount; } ;


 int NM_DBG_REFC (struct netmap_mem_d*,char const*,int) ;
 int NM_MTX_LOCK (int ) ;
 int NM_MTX_UNLOCK (int ) ;
 int netmap_mem_delete (struct netmap_mem_d*) ;
 int nm_mem_list_lock ;
 int nm_mem_release_id (struct netmap_mem_d*) ;

void
__netmap_mem_put(struct netmap_mem_d *nmd, const char *func, int line)
{
 int last;
 NM_MTX_LOCK(nm_mem_list_lock);
 last = (--nmd->refcount == 0);
 if (last)
  nm_mem_release_id(nmd);
 NM_DBG_REFC(nmd, func, line);
 NM_MTX_UNLOCK(nm_mem_list_lock);
 if (last)
  netmap_mem_delete(nmd);
}
