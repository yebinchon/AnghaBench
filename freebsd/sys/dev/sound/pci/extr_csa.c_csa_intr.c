
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u_int32_t ;
typedef TYPE_2__* sc_p ;
typedef int csa_res ;
struct TYPE_3__ {int hisr; } ;
struct TYPE_4__ {int midiintr_arg; int (* midiintr ) (int ) ;int pcmintr_arg; int (* pcmintr ) (int ) ;TYPE_1__ binfo; int res; } ;


 int BA0_HICR ;
 int BA0_HISR ;
 int HICR_CHGM ;
 int HICR_IEV ;
 int HISR_MIDI ;
 int HISR_VC0 ;
 int HISR_VC1 ;
 int csa_readio (int *,int ) ;
 int csa_writeio (int *,int ,int) ;
 int stub1 (int ) ;
 int stub2 (int ) ;

__attribute__((used)) static void
csa_intr(void *arg)
{
 sc_p scp = arg;
 csa_res *resp;
 u_int32_t hisr;

 resp = &scp->res;


 hisr = csa_readio(resp, BA0_HISR);
 if ((hisr & 0x7fffffff) == 0) {

  csa_writeio(resp, BA0_HICR, HICR_IEV | HICR_CHGM);
  return;
 }





 scp->binfo.hisr = hisr;


 if ((hisr & (HISR_VC0 | HISR_VC1)) != 0 && scp->pcmintr != ((void*)0)) {
  scp->pcmintr(scp->pcmintr_arg);
  hisr &= ~(HISR_VC0 | HISR_VC1);
 }
 if ((hisr & HISR_MIDI) != 0 && scp->midiintr != ((void*)0)) {
  scp->midiintr(scp->midiintr_arg);
  hisr &= ~HISR_MIDI;
 }


 csa_writeio(resp, BA0_HICR, HICR_IEV | HICR_CHGM);
}
