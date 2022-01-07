
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intr_irqsrc {int * isrc_count; } ;



__attribute__((used)) static inline void
isrc_increment_straycount(struct intr_irqsrc *isrc)
{

 isrc->isrc_count[1]++;
}
