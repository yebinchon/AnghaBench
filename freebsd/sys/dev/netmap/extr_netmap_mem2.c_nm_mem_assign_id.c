
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct netmap_mem_d {int dummy; } ;


 int NM_MTX_LOCK (int ) ;
 int NM_MTX_UNLOCK (int ) ;
 int nm_mem_assign_id_locked (struct netmap_mem_d*) ;
 int nm_mem_list_lock ;

__attribute__((used)) static int
nm_mem_assign_id(struct netmap_mem_d *nmd)
{
 int ret;

 NM_MTX_LOCK(nm_mem_list_lock);
 ret = nm_mem_assign_id_locked(nmd);
 NM_MTX_UNLOCK(nm_mem_list_lock);

 return ret;
}
