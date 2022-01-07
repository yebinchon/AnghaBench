
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint32_t ;
struct netmap_mem_d {int dummy; } ;
struct netmap_adapter {struct netmap_mem_d* nm_mem; } ;


 int NMA_LOCK (struct netmap_mem_d*) ;
 int NMA_UNLOCK (struct netmap_mem_d*) ;
 scalar_t__* netmap_buf_malloc (struct netmap_mem_d*,scalar_t__*,scalar_t__*) ;
 int nm_prdis (int,char*,scalar_t__,scalar_t__) ;
 int nm_prerr (char*,scalar_t__,scalar_t__) ;

uint32_t
netmap_extra_alloc(struct netmap_adapter *na, uint32_t *head, uint32_t n)
{
 struct netmap_mem_d *nmd = na->nm_mem;
 uint32_t i, pos = 0;

 NMA_LOCK(nmd);

 *head = 0;
 for (i = 0 ; i < n; i++) {
  uint32_t cur = *head;
  uint32_t *p = netmap_buf_malloc(nmd, &pos, head);
  if (p == ((void*)0)) {
   nm_prerr("no more buffers after %d of %d", i, n);
   *head = cur;
   break;
  }
  nm_prdis(5, "allocate buffer %d -> %d", *head, cur);
  *p = cur;
 }

 NMA_UNLOCK(nmd);

 return i;
}
