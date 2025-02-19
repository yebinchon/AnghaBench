
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct netmap_obj_pool {int objtotal; } ;
struct netmap_mem_d {struct netmap_obj_pool* pools; } ;
struct TYPE_2__ {struct lut_entry* lut; } ;
struct netmap_adapter {struct netmap_mem_d* nm_mem; TYPE_1__ na_lut; } ;
struct lut_entry {int* vaddr; } ;


 size_t NETMAP_BUF_POOL ;
 int NM_DEBUG_MEM ;
 int netmap_debug ;
 scalar_t__ netmap_obj_free (struct netmap_obj_pool*,int) ;
 int nm_prdis (char*) ;
 int nm_prerr (char*,int) ;
 int nm_prinf (char*,int) ;

__attribute__((used)) static void
netmap_extra_free(struct netmap_adapter *na, uint32_t head)
{
 struct lut_entry *lut = na->na_lut.lut;
 struct netmap_mem_d *nmd = na->nm_mem;
 struct netmap_obj_pool *p = &nmd->pools[NETMAP_BUF_POOL];
 uint32_t i, cur, *buf;

 nm_prdis("freeing the extra list");
 for (i = 0; head >=2 && head < p->objtotal; i++) {
  cur = head;
  buf = lut[head].vaddr;
  head = *buf;
  *buf = 0;
  if (netmap_obj_free(p, cur))
   break;
 }
 if (head != 0)
  nm_prerr("breaking with head %d", head);
 if (netmap_debug & NM_DEBUG_MEM)
  nm_prinf("freed %d buffers", i);
}
