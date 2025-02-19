
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint64_t ;
typedef int u_int ;
struct netmap_obj_pool {scalar_t__ _clustsize; scalar_t__ _numclusters; } ;
struct netmap_mem_d {int flags; int nm_id; struct netmap_obj_pool* pools; scalar_t__ nm_totalsize; } ;
typedef int nm_memid_t ;


 int NETMAP_MEM_FINALIZED ;
 int NETMAP_POOLS_NR ;
 int netmap_mem_config (struct netmap_mem_d*) ;

__attribute__((used)) static int
netmap_mem2_get_info(struct netmap_mem_d* nmd, uint64_t* size,
   u_int *memflags, nm_memid_t *id)
{
 int error = 0;
 error = netmap_mem_config(nmd);
 if (error)
  goto out;
 if (size) {
  if (nmd->flags & NETMAP_MEM_FINALIZED) {
   *size = nmd->nm_totalsize;
  } else {
   int i;
   *size = 0;
   for (i = 0; i < NETMAP_POOLS_NR; i++) {
    struct netmap_obj_pool *p = nmd->pools + i;
    *size += ((size_t)p->_numclusters * (size_t)p->_clustsize);
   }
  }
 }
 if (memflags)
  *memflags = nmd->flags;
 if (id)
  *id = nmd->nm_id;
out:
 return error;
}
