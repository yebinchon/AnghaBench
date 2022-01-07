
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint64_t ;
typedef int u_int ;
struct netmap_mem_d {TYPE_1__* ops; } ;
typedef int nm_memid_t ;
struct TYPE_2__ {int (* nmd_get_info ) (struct netmap_mem_d*,int *,int *,int *) ;} ;


 int NMA_LOCK (struct netmap_mem_d*) ;
 int NMA_UNLOCK (struct netmap_mem_d*) ;
 int stub1 (struct netmap_mem_d*,int *,int *,int *) ;

int
netmap_mem_get_info(struct netmap_mem_d *nmd, uint64_t *size,
  u_int *memflags, nm_memid_t *memid)
{
 int rv;

 NMA_LOCK(nmd);
 rv = nmd->ops->nmd_get_info(nmd, size, memflags, memid);
 NMA_UNLOCK(nmd);

 return rv;
}
