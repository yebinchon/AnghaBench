
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u_long ;
struct thread {TYPE_3__* td_pcb; } ;
struct soft_segment_descriptor {int member_1; int member_4; unsigned int ssd_base; unsigned int ssd_limit; int member_8; int member_7; int member_6; int member_5; int member_3; int member_2; int member_0; } ;
struct TYPE_5__ {int tss_ioopt; int * tss_esp0; int tss_ss0; } ;
struct TYPE_4__ {void* vm86_intmap; } ;
struct pcb_ext {int ext_tssd; TYPE_2__ ext_tss; TYPE_1__ ext_vm86; void* ext_iomap; } ;
typedef void* caddr_t ;
struct TYPE_6__ {struct pcb_ext* pcb_ext; } ;


 int GDATA_SEL ;
 int GPROC0_SEL ;
 int GSEL (int ,int ) ;
 scalar_t__ IOPAGES ;
 int KASSERT (int,char*) ;
 int M_WAITOK ;
 int M_ZERO ;
 int PAGE_SIZE ;
 int * PCPU_GET (int ) ;
 int PCPU_SET (int ,int) ;
 int SDT_SYS386TSS ;
 int SEL_KPL ;
 int critical_enter () ;
 int critical_exit () ;
 int ctob (scalar_t__) ;
 struct thread* curthread ;
 int ltr (int ) ;
 struct pcb_ext* pmap_trm_alloc (int,int) ;
 int private_tss ;
 int ssdtosd (struct soft_segment_descriptor*,int *) ;
 int trampstk ;
 int tss_gdt ;

int
i386_extend_pcb(struct thread *td)
{
 int i, offset;
 u_long *addr;
 struct pcb_ext *ext;
 struct soft_segment_descriptor ssd = {
  0,
  ctob(IOPAGES + 1) - 1,
  SDT_SYS386TSS,
  0,
  1,
  0, 0,
  0,
  0
 };

 ext = pmap_trm_alloc(ctob(IOPAGES + 1), M_WAITOK | M_ZERO);

 ext->ext_tss.tss_ss0 = GSEL(GDATA_SEL, SEL_KPL);





 offset = PAGE_SIZE - 16;
 ext->ext_tss.tss_ioopt =
     (offset - ((unsigned)&ext->ext_tss - (unsigned)ext)) << 16;
 ext->ext_iomap = (caddr_t)ext + offset;
 ext->ext_vm86.vm86_intmap = (caddr_t)ext + offset - 32;

 addr = (u_long *)ext->ext_vm86.vm86_intmap;
 for (i = 0; i < (ctob(IOPAGES) + 32 + 16) / sizeof(u_long); i++)
  *addr++ = ~0;

 ssd.ssd_base = (unsigned)&ext->ext_tss;
 ssd.ssd_limit -= ((unsigned)&ext->ext_tss - (unsigned)ext);
 ssdtosd(&ssd, &ext->ext_tssd);

 KASSERT(td == curthread, ("giving TSS to !curthread"));
 KASSERT(td->td_pcb->pcb_ext == 0, ("already have a TSS!"));


 critical_enter();
 ext->ext_tss.tss_esp0 = PCPU_GET(trampstk);
 td->td_pcb->pcb_ext = ext;
 PCPU_SET(private_tss, 1);
 *PCPU_GET(tss_gdt) = ext->ext_tssd;
 ltr(GSEL(GPROC0_SEL, SEL_KPL));
 critical_exit();

 return 0;
}
