
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intr_irqsrc {int isrc_flags; int * isrc_count; } ;


 int INTR_ISRCF_PPI ;
 int atomic_add_long (int *,int) ;

__attribute__((used)) static inline void
isrc_increment_count(struct intr_irqsrc *isrc)
{

 if (isrc->isrc_flags & INTR_ISRCF_PPI)
  atomic_add_long(&isrc->isrc_count[0], 1);
 else
  isrc->isrc_count[0]++;
}
