
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ baddr; struct TYPE_4__* next; scalar_t__ vaddr; } ;
typedef TYPE_1__ m_vtob_s ;
struct TYPE_5__ {TYPE_1__** vtob; } ;
typedef TYPE_2__ m_pool_s ;
typedef scalar_t__ m_addr_t ;
typedef int bus_dma_tag_t ;


 scalar_t__ MEMO_CLUSTER_MASK ;
 int VTOB_HASH_CODE (void*) ;
 TYPE_2__* ___get_dma_pool (int ) ;
 int panic (char*) ;

__attribute__((used)) static m_addr_t __vtobus(bus_dma_tag_t dev_dmat, void *m)
{
 m_pool_s *mp;
 int hc = VTOB_HASH_CODE(m);
 m_vtob_s *vp = ((void*)0);
 m_addr_t a = ((m_addr_t) m) & ~MEMO_CLUSTER_MASK;


 mp = ___get_dma_pool(dev_dmat);
 if (mp) {
  vp = mp->vtob[hc];
  while (vp && (m_addr_t) vp->vaddr != a)
   vp = vp->next;
 }

 if (!vp)
  panic("sym: VTOBUS FAILED!\n");
 return vp ? vp->baddr + (((m_addr_t) m) - a) : 0;
}
