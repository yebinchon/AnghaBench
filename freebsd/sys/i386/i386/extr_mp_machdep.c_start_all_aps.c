
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_short ;
typedef int u_int32_t ;
typedef int u_char ;


 int BIOS_RESET ;
 int BIOS_WARM ;
 int CHECK_INIT (int) ;
 int CHECK_PRINT (char*) ;
 int CMOS_DATA ;
 int CMOS_REG ;
 int CPU_SET (int,int *) ;
 int DPCPU_SIZE ;
 int MTX_SPIN ;
 int M_NOWAIT ;
 int M_WAITOK ;
 int M_ZERO ;
 int PAGE_SIZE ;
 int TRAMP_COPYOUT_SZ ;
 int TRAMP_STACK_SZ ;
 scalar_t__ WARMBOOT_OFF ;
 scalar_t__ WARMBOOT_SEG ;
 int WARMBOOT_TARGET ;
 int all_cpus ;
 int ap_boot_mtx ;
 void* ap_copyout_buf ;
 void* ap_tramp_stack_base ;
 int bootAP ;
 char* bootSTK ;
 int boot_address ;
 char** bootstacks ;
 char cngetc () ;
 int* cpu_apic_ids ;
 void* dpcpu ;
 int inb (int ) ;
 int install_ap_tramp () ;
 scalar_t__ kmem_malloc (int,int) ;
 int kstack_pages ;
 int mp_naps ;
 int mp_ncpus ;
 int mtx_init (int *,char*,int *,int ) ;
 int outb (int ,int ) ;
 int panic (char*) ;
 int pmap_remap_lower (int) ;
 void* pmap_trm_alloc (int ,int ) ;
 int printf (char*,...) ;
 int start_ap (int) ;

__attribute__((used)) static int
start_all_aps(void)
{
 u_char mpbiosreason;
 u_int32_t mpbioswarmvec;
 int apic_id, cpu;

 mtx_init(&ap_boot_mtx, "ap boot", ((void*)0), MTX_SPIN);

 pmap_remap_lower(1);


 install_ap_tramp();


 mpbioswarmvec = *((u_int32_t *) WARMBOOT_OFF);
 outb(CMOS_REG, BIOS_RESET);
 mpbiosreason = inb(CMOS_DATA);




 for (cpu = 1; cpu < mp_ncpus; cpu++) {
  apic_id = cpu_apic_ids[cpu];


  bootstacks[cpu] = (char *)kmem_malloc(kstack_pages * PAGE_SIZE,
      M_WAITOK | M_ZERO);
  dpcpu = (void *)kmem_malloc(DPCPU_SIZE, M_WAITOK | M_ZERO);

  *((volatile u_short *) WARMBOOT_OFF) = WARMBOOT_TARGET;
  *((volatile u_short *) WARMBOOT_SEG) = (boot_address >> 4);
  outb(CMOS_REG, BIOS_RESET);
  outb(CMOS_DATA, BIOS_WARM);

  bootSTK = (char *)bootstacks[cpu] + kstack_pages *
      PAGE_SIZE - 4;
  bootAP = cpu;

  ap_tramp_stack_base = pmap_trm_alloc(TRAMP_STACK_SZ, M_NOWAIT);
  ap_copyout_buf = pmap_trm_alloc(TRAMP_COPYOUT_SZ, M_NOWAIT);


  CHECK_INIT(99);
  if (!start_ap(apic_id)) {
   printf("AP #%d (PHY# %d) failed!\n", cpu, apic_id);
   CHECK_PRINT("trace");

   printf("panic y/n? [y] ");
   if (cngetc() != 'n')
    panic("bye-bye");
  }
  CHECK_PRINT("trace");

  CPU_SET(cpu, &all_cpus);
 }

 pmap_remap_lower(0);


 *(u_int32_t *) WARMBOOT_OFF = mpbioswarmvec;

 outb(CMOS_REG, BIOS_RESET);
 outb(CMOS_DATA, mpbiosreason);


 return mp_naps;
}
