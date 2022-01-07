
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct csa_info {int res; } ;
typedef int device_t ;
typedef int csa_res ;


 int BA0_AC97_POWERDOWN ;
 int BA0_CLKCR1 ;
 int BA1_CIE ;
 int BA1_PFIE ;
 int CLKCR1_SWCE ;
 int csa_ac97_suspend (struct csa_info*) ;
 int csa_active (struct csa_info*,int) ;
 int csa_readmem (int *,int ) ;
 int csa_resetdsp (int *) ;
 int csa_stopcapturedma (struct csa_info*) ;
 int csa_stopdsp (int *) ;
 int csa_stopplaydma (struct csa_info*) ;
 int csa_writecodec (int *,int ,int) ;
 int csa_writemem (int *,int ,int) ;
 struct csa_info* pcm_getdevinfo (int ) ;

__attribute__((used)) static int
pcmcsa_suspend(device_t dev)
{
 struct csa_info *csa;
 csa_res *resp;

 csa = pcm_getdevinfo(dev);
 resp = &csa->res;

 csa_active(csa, 1);


 csa_writemem(resp, BA1_PFIE,
     (csa_readmem(resp, BA1_PFIE) & ~0x0000f03f) | 0x00000010);

 csa_writemem(resp, BA1_CIE,
     (csa_readmem(resp, BA1_CIE) & ~0x0000003f) | 0x00000011);
 csa_stopplaydma(csa);
 csa_stopcapturedma(csa);

 csa_ac97_suspend(csa);

 csa_resetdsp(resp);

 csa_stopdsp(resp);



 csa_writecodec(&csa->res, BA0_AC97_POWERDOWN, 0x300);



 csa_writemem(resp, BA0_CLKCR1, 0);




 csa_writemem(resp, BA0_CLKCR1,
     csa_readmem(resp, BA0_CLKCR1) & ~CLKCR1_SWCE);

 csa_active(csa, -1);

 return 0;
}
