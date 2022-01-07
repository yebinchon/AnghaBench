
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u_long ;
struct TYPE_2__ {int dma; } ;
struct csa_info {int pctl; TYPE_1__ pch; int res; } ;
typedef int csa_res ;


 int BA1_PCTL ;
 int BA1_PVOL ;
 int csa_readmem (int *,int ) ;
 int csa_writemem (int *,int ,int) ;

__attribute__((used)) static void
csa_startplaydma(struct csa_info *csa)
{
 csa_res *resp;
 u_long ul;

 if (!csa->pch.dma) {
  resp = &csa->res;
  ul = csa_readmem(resp, BA1_PCTL);
  ul &= 0x0000ffff;
  csa_writemem(resp, BA1_PCTL, ul | csa->pctl);
  csa_writemem(resp, BA1_PVOL, 0x80008000);
  csa->pch.dma = 1;
 }
}
