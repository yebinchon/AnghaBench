
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct m_pool {int nump; } ;
typedef int bus_dma_tag_t ;


 int ___del_dma_pool (struct m_pool*) ;
 struct m_pool* ___get_dma_pool (int ) ;
 int __sym_mfree (struct m_pool*,void*,int,char*) ;

__attribute__((used)) static void
__sym_mfree_dma(bus_dma_tag_t dev_dmat, void *m, int size, char *name)
{
 struct m_pool *mp;


 mp = ___get_dma_pool(dev_dmat);
 if (mp)
  __sym_mfree(mp, m, size, name);





}
