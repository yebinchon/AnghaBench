
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u_int ;
struct intr_irqsrc {size_t isrc_irq; } ;


 int ENOSPC ;
 int MA_OWNED ;
 size_t irq_next_free ;
 struct intr_irqsrc** irq_sources ;
 int isrc_table_lock ;
 int mtx_assert (int *,int ) ;
 size_t nitems (struct intr_irqsrc**) ;

__attribute__((used)) static inline int
isrc_alloc_irq(struct intr_irqsrc *isrc)
{
 u_int maxirqs, irq;

 mtx_assert(&isrc_table_lock, MA_OWNED);

 maxirqs = nitems(irq_sources);
 if (irq_next_free >= maxirqs)
  return (ENOSPC);

 for (irq = irq_next_free; irq < maxirqs; irq++) {
  if (irq_sources[irq] == ((void*)0))
   goto found;
 }
 for (irq = 0; irq < irq_next_free; irq++) {
  if (irq_sources[irq] == ((void*)0))
   goto found;
 }

 irq_next_free = maxirqs;
 return (ENOSPC);

found:
 isrc->isrc_irq = irq;
 irq_sources[irq] = isrc;

 irq_next_free = irq + 1;
 if (irq_next_free >= maxirqs)
  irq_next_free = 0;
 return (0);
}
