
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_char ;
struct ppc_data {scalar_t__ (* ppc_intr_hook ) (int ) ;int ppc_mode; int ppc_irqstat; int ppc_avm; scalar_t__ ppc_dmastat; int (* ppc_dmadone ) (struct ppc_data*) ;int ppc_intr_arg; } ;


 int IRQENABLE ;
 int PPB_ECP ;
 scalar_t__ PPC_DMA_COMPLETE ;
 scalar_t__ PPC_DMA_STARTED ;
 int PPC_ENABLE_DMA ;
 int PPC_IRQ_DMA ;
 int PPC_IRQ_FIFO ;
 int PPC_IRQ_nFAULT ;
 int PPC_LOCK (struct ppc_data*) ;
 int PPC_SERVICE_INTR ;
 int PPC_UNLOCK (struct ppc_data*) ;
 int PPC_nFAULT_INTR ;
 int nFAULT ;
 int printf (char*,...) ;
 int r_ctr (struct ppc_data*) ;
 int r_ecr (struct ppc_data*) ;
 int r_str (struct ppc_data*) ;
 scalar_t__ stub1 (int ) ;
 int stub2 (struct ppc_data*) ;
 int w_ecr (struct ppc_data*,int) ;
 int wakeup (struct ppc_data*) ;

__attribute__((used)) static void
ppcintr(void *arg)
{
 struct ppc_data *ppc = arg;
 u_char ctr, ecr, str;
 PPC_LOCK(ppc);
 if (ppc->ppc_intr_hook != ((void*)0) &&
     ppc->ppc_intr_hook(ppc->ppc_intr_arg) == 0) {
  PPC_UNLOCK(ppc);
  return;
 }

 str = r_str(ppc);
 ctr = r_ctr(ppc);
 ecr = r_ecr(ppc);






 if (ctr & IRQENABLE) {
  PPC_UNLOCK(ppc);
  return;
 }



 if ((str & nFAULT) && (ppc->ppc_mode & PPB_ECP)) {


  if (ppc->ppc_irqstat & PPC_IRQ_nFAULT) {

   w_ecr(ppc, ecr | PPC_nFAULT_INTR);
   ppc->ppc_irqstat &= ~PPC_IRQ_nFAULT;
  } else {

   PPC_UNLOCK(ppc);
   return;
  }
 }

 if (ppc->ppc_irqstat & PPC_IRQ_DMA) {

  w_ecr(ppc, ecr | PPC_SERVICE_INTR);
  ppc->ppc_irqstat &= ~PPC_IRQ_DMA;
  ecr = r_ecr(ppc);


  if ((ppc->ppc_avm & PPB_ECP) && (ecr & PPC_ENABLE_DMA)) {




   w_ecr(ppc, ecr & ~PPC_ENABLE_DMA);
   ecr = r_ecr(ppc);

   if (ppc->ppc_dmastat == PPC_DMA_STARTED) {



    ppc->ppc_dmadone(ppc);
    ppc->ppc_dmastat = PPC_DMA_COMPLETE;


    wakeup(ppc);
   }
  }
 } else if (ppc->ppc_irqstat & PPC_IRQ_FIFO) {


  ppc->ppc_irqstat &= ~PPC_IRQ_FIFO;
 }
 PPC_UNLOCK(ppc);

 return;
}
