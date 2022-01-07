
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint8_t ;
struct bcma_intr {int i_mapped; scalar_t__ i_irq; scalar_t__ i_busline; scalar_t__ i_sel; scalar_t__ i_bank; } ;


 scalar_t__ BCMA_OOB_NUM_BANKS ;
 scalar_t__ BCMA_OOB_NUM_BUSLINES ;
 scalar_t__ BCMA_OOB_NUM_SEL ;
 int M_BHND ;
 int M_NOWAIT ;
 struct bcma_intr* malloc (int,int ,int ) ;

struct bcma_intr *
bcma_alloc_intr(uint8_t bank, uint8_t sel, uint8_t line)
{
 struct bcma_intr *intr;

 if (bank >= BCMA_OOB_NUM_BANKS)
  return (((void*)0));

 if (sel >= BCMA_OOB_NUM_SEL)
  return (((void*)0));

 if (line >= BCMA_OOB_NUM_BUSLINES)
  return (((void*)0));

 intr = malloc(sizeof(*intr), M_BHND, M_NOWAIT);
 if (intr == ((void*)0))
  return (((void*)0));

 intr->i_bank = bank;
 intr->i_sel = sel;
 intr->i_busline = line;
 intr->i_mapped = 0;
 intr->i_irq = 0;

 return (intr);
}
