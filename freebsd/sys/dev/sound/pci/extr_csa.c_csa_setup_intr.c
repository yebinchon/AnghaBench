
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct sndcard_func {int func; } ;
struct resource {int dummy; } ;
typedef TYPE_1__* sc_p ;
typedef int driver_intr_t ;
typedef int driver_filter_t ;
typedef int device_t ;
struct TYPE_7__ {struct resource* irq; } ;
typedef TYPE_2__ csa_res ;
struct TYPE_6__ {void* midiintr_arg; int * midiintr; void* pcmintr_arg; int * pcmintr; TYPE_2__ res; } ;


 int BA0_HICR ;
 int BA0_HISR ;
 int EINVAL ;
 int HICR_CHGM ;
 int HICR_IEV ;
 int HISR_INTENA ;


 int csa_readio (TYPE_2__*,int ) ;
 int csa_writeio (TYPE_2__*,int ,int) ;
 struct sndcard_func* device_get_ivars (int ) ;
 TYPE_1__* device_get_softc (int ) ;
 int printf (char*) ;

__attribute__((used)) static int
csa_setup_intr(device_t bus, device_t child,
        struct resource *irq, int flags,
        driver_filter_t *filter,
        driver_intr_t *intr, void *arg, void **cookiep)
{
 sc_p scp;
 csa_res *resp;
 struct sndcard_func *func;

 if (filter != ((void*)0)) {
  printf("ata-csa.c: we cannot use a filter here\n");
  return (EINVAL);
 }
 scp = device_get_softc(bus);
 resp = &scp->res;





 func = device_get_ivars(child);
 if (func == ((void*)0) || irq != resp->irq)
  return (EINVAL);

 switch (func->func) {
 case 128:
  scp->pcmintr = intr;
  scp->pcmintr_arg = arg;
  break;

 case 129:
  scp->midiintr = intr;
  scp->midiintr_arg = arg;
  break;

 default:
  return (EINVAL);
 }
 *cookiep = scp;
 if ((csa_readio(resp, BA0_HISR) & HISR_INTENA) == 0)
  csa_writeio(resp, BA0_HICR, HICR_IEV | HICR_CHGM);

 return (0);
}
