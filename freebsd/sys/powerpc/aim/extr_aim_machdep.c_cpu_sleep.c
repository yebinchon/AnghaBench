
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_quad_t ;
struct thread {struct thread* td_pcb; } ;
typedef int register_t ;
typedef struct thread jmp_buf ;


 int HID0_DOZE ;
 int HID0_NAP ;
 int HID0_SLEEP ;
 struct thread* PCPU_GET (int ) ;
 int PCPU_SET (struct thread*,struct thread*) ;
 int PSL_POW ;
 int SPR_HID0 ;
 int SPR_SPRG0 ;
 int SPR_SPRG1 ;
 int SPR_SPRG2 ;
 int SPR_SPRG3 ;
 int SPR_SRR0 ;
 int SPR_SRR1 ;
 int ap_pcpu ;
 struct thread* curpcb ;
 struct thread* curthread ;
 int enable_fpu (struct thread*) ;
 int enable_vec (struct thread*) ;
 int flush_disable_caches () ;
 int fputhread ;
 int isync () ;
 int mfmsr () ;
 int mfspr (int ) ;
 int mftb () ;
 int mtmsr (int) ;
 int mtspr (int ,int) ;
 int pcpup ;
 int platform_smp_timebase_sync (int ,int ) ;
 int pmap_activate (struct thread*) ;
 int powerpc_sync () ;
 struct thread* restore ;
 int save_fpu (struct thread*) ;
 int save_vec (struct thread*) ;
 scalar_t__ setjmp (struct thread) ;
 int vecthread ;

void
cpu_sleep()
{
 static u_quad_t timebase = 0;
 static register_t sprgs[4];
 static register_t srrs[2];

 jmp_buf resetjb;
 struct thread *fputd;
 struct thread *vectd;
 register_t hid0;
 register_t msr;
 register_t saved_msr;

 ap_pcpu = pcpup;

 PCPU_SET(restore, &resetjb);

 saved_msr = mfmsr();
 fputd = PCPU_GET(fputhread);
 vectd = PCPU_GET(vecthread);
 if (fputd != ((void*)0))
  save_fpu(fputd);
 if (vectd != ((void*)0))
  save_vec(vectd);
 if (setjmp(resetjb) == 0) {
  sprgs[0] = mfspr(SPR_SPRG0);
  sprgs[1] = mfspr(SPR_SPRG1);
  sprgs[2] = mfspr(SPR_SPRG2);
  sprgs[3] = mfspr(SPR_SPRG3);
  srrs[0] = mfspr(SPR_SRR0);
  srrs[1] = mfspr(SPR_SRR1);
  timebase = mftb();
  powerpc_sync();
  flush_disable_caches();
  hid0 = mfspr(SPR_HID0);
  hid0 = (hid0 & ~(HID0_DOZE | HID0_NAP)) | HID0_SLEEP;
  powerpc_sync();
  isync();
  msr = mfmsr() | PSL_POW;
  mtspr(SPR_HID0, hid0);
  powerpc_sync();

  while (1)
   mtmsr(msr);
 }
 platform_smp_timebase_sync(timebase, 0);
 PCPU_SET(curthread, curthread);
 PCPU_SET(curpcb, curthread->td_pcb);
 pmap_activate(curthread);
 powerpc_sync();
 mtspr(SPR_SPRG0, sprgs[0]);
 mtspr(SPR_SPRG1, sprgs[1]);
 mtspr(SPR_SPRG2, sprgs[2]);
 mtspr(SPR_SPRG3, sprgs[3]);
 mtspr(SPR_SRR0, srrs[0]);
 mtspr(SPR_SRR1, srrs[1]);
 mtmsr(saved_msr);
 if (fputd == curthread)
  enable_fpu(curthread);
 if (vectd == curthread)
  enable_vec(curthread);
 powerpc_sync();
}
