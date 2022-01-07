
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct csa_info {scalar_t__ pfie; int res; } ;
typedef int csa_res ;


 int BA0_EGPIODR ;
 int BA0_EGPIOPTR ;
 int EGPIODR_GPOE0 ;
 int EGPIODR_GPOE2 ;
 int EGPIOPTR_GPPT0 ;
 int EGPIOPTR_GPPT2 ;
 int csa_readio (int *,int ) ;
 int csa_setcapturesamplerate (int *,int) ;
 int csa_setplaysamplerate (int *,int) ;
 scalar_t__ csa_startdsp (int *) ;
 int csa_stopcapturedma (struct csa_info*) ;
 int csa_stopplaydma (struct csa_info*) ;
 int csa_writeio (int *,int ,int) ;

__attribute__((used)) static int
csa_init(struct csa_info *csa)
{
 csa_res *resp;

 resp = &csa->res;

 csa->pfie = 0;
 csa_stopplaydma(csa);
 csa_stopcapturedma(csa);

 if (csa_startdsp(resp))
  return (1);


 csa_setplaysamplerate(resp, 8000);
 csa_setcapturesamplerate(resp, 8000);

 csa_writeio(resp, BA0_EGPIODR, EGPIODR_GPOE0);
 csa_writeio(resp, BA0_EGPIOPTR, EGPIOPTR_GPPT0);

 csa_writeio(resp, BA0_EGPIODR, csa_readio(resp, BA0_EGPIODR) |
  EGPIODR_GPOE2);
 csa_writeio(resp, BA0_EGPIOPTR, csa_readio(resp, BA0_EGPIOPTR) |
  EGPIOPTR_GPPT2);

 return 0;
}
