
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intr_irqsrc {size_t isrc_irq; } ;


 int EINVAL ;
 size_t INTR_IRQ_INVALID ;
 int MA_OWNED ;
 struct intr_irqsrc** irq_sources ;
 int isrc_table_lock ;
 int mtx_assert (int *,int ) ;
 size_t nitems (struct intr_irqsrc**) ;

__attribute__((used)) static inline int
isrc_free_irq(struct intr_irqsrc *isrc)
{

 mtx_assert(&isrc_table_lock, MA_OWNED);

 if (isrc->isrc_irq >= nitems(irq_sources))
  return (EINVAL);
 if (irq_sources[isrc->isrc_irq] != isrc)
  return (EINVAL);

 irq_sources[isrc->isrc_irq] = ((void*)0);
 isrc->isrc_irq = INTR_IRQ_INVALID;
 return (0);
}
