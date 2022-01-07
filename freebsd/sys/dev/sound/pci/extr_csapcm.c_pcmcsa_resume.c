
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct csa_info {int rch; int pch; int res; } ;
typedef int device_t ;
typedef int csa_res ;


 int BA0_HICR ;
 int BA0_HISR ;
 int BA1_CIE ;
 int BA1_PFIE ;
 int ENXIO ;
 int HICR_CHGM ;
 int HICR_IEV ;
 int HISR_INTENA ;
 int csa_ac97_resume (struct csa_info*) ;
 int csa_active (struct csa_info*,int) ;
 int csa_readio (int *,int ) ;
 int csa_readmem (int *,int ) ;
 int csa_setupchan (int *) ;
 int csa_startcapturedma (struct csa_info*) ;
 scalar_t__ csa_startdsp (int *) ;
 int csa_startplaydma (struct csa_info*) ;
 int csa_stopcapturedma (struct csa_info*) ;
 int csa_stopplaydma (struct csa_info*) ;
 int csa_writeio (int *,int ,int) ;
 int csa_writemem (int *,int ,int) ;
 struct csa_info* pcm_getdevinfo (int ) ;

__attribute__((used)) static int
pcmcsa_resume(device_t dev)
{
 struct csa_info *csa;
 csa_res *resp;

 csa = pcm_getdevinfo(dev);
 resp = &csa->res;

 csa_active(csa, 1);


 csa_stopplaydma(csa);
 csa_stopcapturedma(csa);
 csa_ac97_resume(csa);
 if (csa_startdsp(resp))
  return (ENXIO);

 if ((csa_readio(resp, BA0_HISR) & HISR_INTENA) == 0)
  csa_writeio(resp, BA0_HICR, HICR_IEV | HICR_CHGM);

 csa_writemem(resp, BA1_PFIE, csa_readmem(resp, BA1_PFIE) & ~0x0000f03f);

 csa_writemem(resp, BA1_CIE,
     (csa_readmem(resp, BA1_CIE) & ~0x0000003f) | 0x00000001);

 csa_setupchan(&csa->pch);
 csa_startplaydma(csa);
 csa_setupchan(&csa->rch);
 csa_startcapturedma(csa);

 csa_active(csa, -1);

 return 0;
}
