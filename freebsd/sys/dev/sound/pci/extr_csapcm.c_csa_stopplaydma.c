
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u_long ;
struct TYPE_3__ {int dma; } ;
struct TYPE_4__ {scalar_t__ dma; } ;
struct csa_info {int pctl; TYPE_1__ rch; TYPE_2__ pch; int res; } ;
typedef int csa_res ;


 int BA0_SERBSP ;
 int BA1_PCTL ;
 int BA1_PVOL ;
 int csa_clearserialfifos (int *) ;
 int csa_readmem (int *,int ) ;
 int csa_writeio (int *,int ,int ) ;
 int csa_writemem (int *,int ,int) ;

__attribute__((used)) static void
csa_stopplaydma(struct csa_info *csa)
{
 csa_res *resp;
 u_long ul;

 if (csa->pch.dma) {
  resp = &csa->res;
  ul = csa_readmem(resp, BA1_PCTL);
  csa->pctl = ul & 0xffff0000;
  csa_writemem(resp, BA1_PCTL, ul & 0x0000ffff);
  csa_writemem(resp, BA1_PVOL, 0xffffffff);
  csa->pch.dma = 0;







  if (!csa->rch.dma) {
   csa_clearserialfifos(resp);
   csa_writeio(resp, BA0_SERBSP, 0);
  }
 }
}
