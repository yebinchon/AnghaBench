
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef size_t u_int ;
struct netmap_slot {scalar_t__ flags; int len; int buf_idx; } ;
struct netmap_obj_pool {int _objsize; } ;
struct netmap_mem_d {struct netmap_obj_pool* pools; } ;


 size_t NETMAP_BUF_POOL ;

__attribute__((used)) static void
netmap_mem_set_ring(struct netmap_mem_d *nmd, struct netmap_slot *slot, u_int n, uint32_t index)
{
 struct netmap_obj_pool *p = &nmd->pools[NETMAP_BUF_POOL];
 u_int i;

 for (i = 0; i < n; i++) {
  slot[i].buf_idx = index;
  slot[i].len = p->_objsize;
  slot[i].flags = 0;
 }
}
