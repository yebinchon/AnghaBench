
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intr_irqsrc {int isrc_flags; } ;


 int INTR_ISRCF_IPI ;
 int isrc_free_irq (struct intr_irqsrc*) ;
 int isrc_release_counters (struct intr_irqsrc*) ;
 int isrc_table_lock ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;

int
intr_isrc_deregister(struct intr_irqsrc *isrc)
{
 int error;

 mtx_lock(&isrc_table_lock);
 if ((isrc->isrc_flags & INTR_ISRCF_IPI) == 0)
  isrc_release_counters(isrc);
 error = isrc_free_irq(isrc);
 mtx_unlock(&isrc_table_lock);
 return (error);
}
