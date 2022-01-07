
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct m_pool {int nump; } ;
typedef int bus_dma_tag_t ;


 struct m_pool* ___cre_dma_pool (int ) ;
 int ___del_dma_pool (struct m_pool*) ;
 struct m_pool* ___get_dma_pool (int ) ;
 void* __sym_calloc (struct m_pool*,int,char*) ;

__attribute__((used)) static void *__sym_calloc_dma(bus_dma_tag_t dev_dmat, int size, char *name)
{
 struct m_pool *mp;
 void *m = ((void*)0);


 mp = ___get_dma_pool(dev_dmat);
 if (!mp)
  mp = ___cre_dma_pool(dev_dmat);
 if (mp)
  m = __sym_calloc(mp, size, name);






 return m;
}
