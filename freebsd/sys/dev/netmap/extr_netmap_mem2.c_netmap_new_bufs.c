
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef size_t u_int ;
struct netmap_slot {int buf_idx; scalar_t__ ptr; scalar_t__ flags; int len; } ;
struct netmap_obj_pool {int objfree; int name; int _objsize; } ;
struct netmap_mem_d {struct netmap_obj_pool* pools; } ;
typedef int slot ;


 int ENOMEM ;
 size_t NETMAP_BUF_POOL ;
 int bzero (struct netmap_slot*,size_t) ;
 void* netmap_buf_malloc (struct netmap_mem_d*,int *,int *) ;
 int netmap_obj_free (struct netmap_obj_pool*,int ) ;
 int nm_prdis (char*,int ,size_t,int ,int ) ;
 int nm_prerr (char*,size_t,size_t) ;

__attribute__((used)) static int
netmap_new_bufs(struct netmap_mem_d *nmd, struct netmap_slot *slot, u_int n)
{
 struct netmap_obj_pool *p = &nmd->pools[NETMAP_BUF_POOL];
 u_int i = 0;
 uint32_t pos = 0;
 uint32_t index = 0;

 for (i = 0; i < n; i++) {
  void *vaddr = netmap_buf_malloc(nmd, &pos, &index);
  if (vaddr == ((void*)0)) {
   nm_prerr("no more buffers after %d of %d", i, n);
   goto cleanup;
  }
  slot[i].buf_idx = index;
  slot[i].len = p->_objsize;
  slot[i].flags = 0;
  slot[i].ptr = 0;
 }

 nm_prdis("%s: allocated %d buffers, %d available, first at %d", p->name, n, p->objfree, pos);
 return (0);

cleanup:
 while (i > 0) {
  i--;
  netmap_obj_free(p, slot[i].buf_idx);
 }
 bzero(slot, n * sizeof(slot[0]));
 return (ENOMEM);
}
