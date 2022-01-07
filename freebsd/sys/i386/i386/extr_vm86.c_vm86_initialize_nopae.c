
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ vm_offset_t ;
typedef int u_int ;
struct vm86frame {int dummy; } ;
struct TYPE_4__ {int tss_ioopt; int tss_ss0; void* tss_esp0; } ;
struct TYPE_3__ {int vm86_has_vme; scalar_t__ vm86_intmap; } ;
struct pcb_ext {int new_ptd; int ext_tssd; TYPE_2__ ext_tss; TYPE_1__ ext_vm86; scalar_t__ ext_iomap; struct pcb_ext* pcb_ext; int pcb_flags; void* pgtable_va; void* vm86_frame; } ;
struct vm86_layout_nopae {int vml_iomap_trailer; scalar_t__ vml_intmap; scalar_t__ vml_iomap; struct pcb_ext vml_ext; struct pcb_ext vml_pcb; } ;
struct vm86_layout {int dummy; } ;
struct soft_segment_descriptor {int member_4; int ssd_base; scalar_t__ ssd_limit; int member_8; int member_7; int member_6; int member_5; int member_3; int member_2; int member_1; int member_0; } ;
struct pcb {int new_ptd; int ext_tssd; TYPE_2__ ext_tss; TYPE_1__ ext_vm86; scalar_t__ ext_iomap; struct pcb* pcb_ext; int pcb_flags; void* pgtable_va; void* vm86_frame; } ;


 int CPUID_VME ;
 int CR4_VME ;
 int GDATA_SEL ;
 int GSEL (int ,int ) ;
 int INTMAP_SIZE ;
 int IOMAP_SIZE ;
 int MTX_DEF ;
 int PCB_VM86CALL ;
 int PG_RW ;
 int PG_U ;
 int PG_V ;
 int SDT_SYS386TSS ;
 int SEL_KPL ;
 scalar_t__ TSS_SIZE ;
 int bzero (struct pcb_ext*,int) ;
 int cpu_feature ;
 scalar_t__ ctob (int) ;
 int msgbufinit (scalar_t__,scalar_t__) ;
 int mtx_init (int *,char*,int *,int ) ;
 int rcr4 () ;
 int ssdtosd (struct soft_segment_descriptor*,int *) ;
 int vm86_lock ;
 int vm86pa ;
 void* vm86paddr ;
 struct pcb_ext* vm86pcb ;

__attribute__((used)) static void
vm86_initialize_nopae(void)
{
 int i;
 u_int *addr;
 struct vm86_layout_nopae *vml;
 struct pcb *pcb;
 struct pcb_ext *ext;
 struct soft_segment_descriptor ssd = {
  0,
  0,
  SDT_SYS386TSS,
  0,
  1,
  0, 0,
  0,
  0
 };

 vml = (struct vm86_layout_nopae *)vm86paddr;
 pcb = &vml->vml_pcb;
 ext = &vml->vml_ext;

 mtx_init(&vm86_lock, "vm86 lock", ((void*)0), MTX_DEF);

 bzero(pcb, sizeof(struct pcb));
 pcb->new_ptd = vm86pa | PG_V | PG_RW | PG_U;
 pcb->vm86_frame = vm86paddr - sizeof(struct vm86frame);
 pcb->pgtable_va = vm86paddr;
 pcb->pcb_flags = PCB_VM86CALL;
 pcb->pcb_ext = ext;

 bzero(ext, sizeof(struct pcb_ext));
 ext->ext_tss.tss_esp0 = vm86paddr;
 ext->ext_tss.tss_ss0 = GSEL(GDATA_SEL, SEL_KPL);
 ext->ext_tss.tss_ioopt =
  ((u_int)vml->vml_iomap - (u_int)&ext->ext_tss) << 16;
 ext->ext_iomap = vml->vml_iomap;
 ext->ext_vm86.vm86_intmap = vml->vml_intmap;

 if (cpu_feature & CPUID_VME)
  ext->ext_vm86.vm86_has_vme = (rcr4() & CR4_VME ? 1 : 0);

 addr = (u_int *)ext->ext_vm86.vm86_intmap;
 for (i = 0; i < (INTMAP_SIZE + IOMAP_SIZE) / sizeof(u_int); i++)
  *addr++ = 0;
 vml->vml_iomap_trailer = 0xff;

 ssd.ssd_base = (u_int)&ext->ext_tss;
 ssd.ssd_limit = TSS_SIZE - 1;
 ssdtosd(&ssd, &ext->ext_tssd);

 vm86pcb = pcb;
}
