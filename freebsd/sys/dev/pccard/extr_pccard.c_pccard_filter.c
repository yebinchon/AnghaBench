
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pccard_function {int (* intr_filter ) (int ) ;int intr_handler_arg; int sc; } ;


 int FILTER_SCHEDULE_THREAD ;
 int FILTER_STRAY ;
 int PCCARD_CCR_STATUS ;
 int PCCARD_CCR_STATUS_INTR ;
 int pccard_ccr_read (struct pccard_function*,int ) ;
 int pccard_ccr_write (struct pccard_function*,int ,int) ;
 scalar_t__ pccard_mfc (int ) ;
 int stub1 (int ) ;

__attribute__((used)) static int
pccard_filter(void *arg)
{
 struct pccard_function *pf = (struct pccard_function*) arg;
 int reg;
 int doisr = 1;
 if (pccard_mfc(pf->sc)) {
  reg = pccard_ccr_read(pf, PCCARD_CCR_STATUS);
  if (reg & PCCARD_CCR_STATUS_INTR)
   pccard_ccr_write(pf, PCCARD_CCR_STATUS,
       reg & ~PCCARD_CCR_STATUS_INTR);
  else
   doisr = 0;
 }
 if (doisr) {
  if (pf->intr_filter != ((void*)0))
   return (pf->intr_filter(pf->intr_handler_arg));
  return (FILTER_SCHEDULE_THREAD);
 }
 return (FILTER_STRAY);
}
