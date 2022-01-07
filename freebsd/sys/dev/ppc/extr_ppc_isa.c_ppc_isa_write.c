
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;
struct ppc_data {int ppc_avm; scalar_t__ ppc_dmachan; int ppc_dmacnt; int ppc_mode; void* ppc_dmastat; int ppc_lock; scalar_t__ ppc_dmaddr; scalar_t__ ppc_dmaflags; int ppc_irqstat; } ;
typedef int device_t ;
typedef scalar_t__ caddr_t ;


 int DELAY (int) ;
 int EINTR ;
 int EINVAL ;
 int EWOULDBLOCK ;
 char IRQENABLE ;
 int PCATCH ;
 int PPBPRI ;


 int PPC_ASSERT_LOCKED (struct ppc_data*) ;
 char PPC_DISABLE_INTR ;
 void* PPC_DMA_INIT ;
 void* PPC_DMA_INTERRUPTED ;
 void* PPC_DMA_STARTED ;
 char PPC_ECR_ECP ;
 char PPC_ECR_FIFO ;
 char PPC_ECR_RESET ;
 char PPC_ECR_STD ;
 char PPC_ENABLE_DMA ;
 int PPC_FIFO_EMPTY ;
 int PPC_IRQ_DMA ;
 char PPC_SERVICE_INTR ;
 struct ppc_data* device_get_softc (int ) ;
 int hz ;
 int isa_dmadone (scalar_t__,scalar_t__,int,scalar_t__) ;
 int isa_dmastart (scalar_t__,scalar_t__,int,scalar_t__) ;
 int mtx_sleep (struct ppc_data*,int *,int,char*,int) ;
 int printf (char*,...) ;
 char r_ctr (struct ppc_data*) ;
 int r_ecr (struct ppc_data*) ;
 int w_ctr (struct ppc_data*,char) ;
 int w_ecr (struct ppc_data*,char) ;

int
ppc_isa_write(device_t dev, char *buf, int len, int how)
{
 struct ppc_data *ppc = device_get_softc(dev);
 char ecr, ecr_sav, ctr, ctr_sav;
 int error = 0;
 int spin;

 PPC_ASSERT_LOCKED(ppc);
 if (!(ppc->ppc_avm & 128))
  return (EINVAL);
 if (ppc->ppc_dmachan == 0)
  return (EINVAL);





 ecr_sav = r_ecr(ppc);
 ctr_sav = r_ctr(ppc);






 ecr = PPC_ECR_STD | PPC_DISABLE_INTR;
 w_ecr(ppc, ecr);


 ctr = r_ctr(ppc);
 ctr &= ~IRQENABLE;
 w_ctr(ppc, ctr);

 ppc->ppc_dmaflags = 0;
 ppc->ppc_dmaddr = (caddr_t)buf;
 ppc->ppc_dmacnt = (u_int)len;

 switch (ppc->ppc_mode) {
 case 129:

  ecr = PPC_ECR_FIFO | PPC_DISABLE_INTR | PPC_ENABLE_DMA;
  break;
 case 128:
  ecr = PPC_ECR_ECP | PPC_DISABLE_INTR | PPC_ENABLE_DMA;
  break;
 default:
  error = EINVAL;
  goto error;
 }

 w_ecr(ppc, ecr);
 ecr = r_ecr(ppc);

 ppc->ppc_dmastat = PPC_DMA_INIT;


 ecr &= ~PPC_SERVICE_INTR;
 ppc->ppc_irqstat = PPC_IRQ_DMA;
 w_ecr(ppc, ecr);

 isa_dmastart(ppc->ppc_dmaflags, ppc->ppc_dmaddr, ppc->ppc_dmacnt,
       ppc->ppc_dmachan);
 ppc->ppc_dmastat = PPC_DMA_STARTED;
 do {

  error = mtx_sleep(ppc, &ppc->ppc_lock, PPBPRI | PCATCH,
      "ppcdma", 0);
 } while (error == EWOULDBLOCK);

 if (error) {




  isa_dmadone(ppc->ppc_dmaflags, ppc->ppc_dmaddr,
       ppc->ppc_dmacnt, ppc->ppc_dmachan);


  w_ecr(ppc, PPC_ECR_RESET);

  ppc->ppc_dmastat = PPC_DMA_INTERRUPTED;
  goto error;
 }


 while (!(r_ecr(ppc) & PPC_FIFO_EMPTY)) {

  for (spin=100; spin; spin--)
   if (r_ecr(ppc) & PPC_FIFO_EMPTY)
    goto fifo_empty;



  error = mtx_sleep(ppc, &ppc->ppc_lock, PPBPRI | PCATCH,
      "ppcfifo", hz / 100);
  if (error != EWOULDBLOCK) {




   w_ecr(ppc, PPC_ECR_RESET);

   ppc->ppc_dmastat = PPC_DMA_INTERRUPTED;
   error = EINTR;
   goto error;
  }
 }

fifo_empty:

 w_ecr(ppc, PPC_ECR_RESET);

error:





 DELAY(1);

 w_ecr(ppc, ecr_sav);
 w_ctr(ppc, ctr_sav);
 return (error);
}
