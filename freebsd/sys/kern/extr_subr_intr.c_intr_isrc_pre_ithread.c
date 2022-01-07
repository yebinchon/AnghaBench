
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intr_irqsrc {int isrc_dev; } ;


 int PIC_PRE_ITHREAD (int ,struct intr_irqsrc*) ;

__attribute__((used)) static void
intr_isrc_pre_ithread(void *arg)
{
 struct intr_irqsrc *isrc = arg;

 PIC_PRE_ITHREAD(isrc->isrc_dev, isrc);
}
