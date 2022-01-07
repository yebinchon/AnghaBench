
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nmreq_pools_info {int nr_buf_pool_objsize; int nr_buf_pool_objtotal; scalar_t__ nr_buf_pool_offset; int nr_ring_pool_objsize; int nr_ring_pool_objtotal; scalar_t__ nr_ring_pool_offset; int nr_if_pool_objsize; int nr_if_pool_objtotal; scalar_t__ nr_if_pool_offset; int nr_mem_id; int nr_memsize; } ;
struct netmap_mem_d {TYPE_1__* pools; } ;
struct TYPE_2__ {int _objsize; int objtotal; scalar_t__ memtotal; } ;


 size_t NETMAP_BUF_POOL ;
 size_t NETMAP_IF_POOL ;
 size_t NETMAP_RING_POOL ;
 int NMA_LOCK (struct netmap_mem_d*) ;
 int NMA_UNLOCK (struct netmap_mem_d*) ;
 int netmap_mem_get_info (struct netmap_mem_d*,int *,int *,int *) ;

int
netmap_mem_pools_info_get(struct nmreq_pools_info *req,
    struct netmap_mem_d *nmd)
{
 int ret;

 ret = netmap_mem_get_info(nmd, &req->nr_memsize, ((void*)0),
     &req->nr_mem_id);
 if (ret) {
  return ret;
 }

 NMA_LOCK(nmd);
 req->nr_if_pool_offset = 0;
 req->nr_if_pool_objtotal = nmd->pools[NETMAP_IF_POOL].objtotal;
 req->nr_if_pool_objsize = nmd->pools[NETMAP_IF_POOL]._objsize;

 req->nr_ring_pool_offset = nmd->pools[NETMAP_IF_POOL].memtotal;
 req->nr_ring_pool_objtotal = nmd->pools[NETMAP_RING_POOL].objtotal;
 req->nr_ring_pool_objsize = nmd->pools[NETMAP_RING_POOL]._objsize;

 req->nr_buf_pool_offset = nmd->pools[NETMAP_IF_POOL].memtotal +
        nmd->pools[NETMAP_RING_POOL].memtotal;
 req->nr_buf_pool_objtotal = nmd->pools[NETMAP_BUF_POOL].objtotal;
 req->nr_buf_pool_objsize = nmd->pools[NETMAP_BUF_POOL]._objsize;
 NMA_UNLOCK(nmd);

 return 0;
}
