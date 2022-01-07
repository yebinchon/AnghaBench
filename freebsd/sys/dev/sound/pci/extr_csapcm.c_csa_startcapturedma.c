
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u_long ;
struct TYPE_2__ {int dma; } ;
struct csa_info {int cctl; TYPE_1__ rch; int res; } ;
typedef int csa_res ;


 int BA1_CCTL ;
 int BA1_CVOL ;
 int csa_readmem (int *,int ) ;
 int csa_writemem (int *,int ,int) ;

__attribute__((used)) static void
csa_startcapturedma(struct csa_info *csa)
{
 csa_res *resp;
 u_long ul;

 if (!csa->rch.dma) {
  resp = &csa->res;
  ul = csa_readmem(resp, BA1_CCTL);
  ul &= 0xffff0000;
  csa_writemem(resp, BA1_CCTL, ul | csa->cctl);
  csa_writemem(resp, BA1_CVOL, 0x80008000);
  csa->rch.dma = 1;
 }
}
