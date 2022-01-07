
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int cpu_bsp; } ;


 int GCODE_SEL ;
 int GSEL (int ,int ) ;
 int IDTVEC (int ) ;
 int IPI_BITMAP_VECTOR ;
 int IPI_INVLCACHE ;
 int IPI_INVLPG ;
 int IPI_INVLRNG ;
 int IPI_INVLTLB ;
 int IPI_RENDEZVOUS ;
 int IPI_STOP ;
 int IPI_SUSPEND ;
 int KASSERT (int,char*) ;
 int MAXCPU ;
 int PCPU_GET (int ) ;
 int SDT_SYS386IGT ;
 int SEL_KPL ;
 int apic_id ;
 int assign_cpu_ids () ;
 int boot_cpu_id ;
 int* cpu_apic_ids ;
 TYPE_1__* cpu_info ;
 int cpustop ;
 int cpususpend ;
 int invlcache ;
 int invlpg ;
 int invlrng ;
 int invltlb ;
 int ipi_intr_bitmap_handler ;
 int rendezvous ;
 int set_interrupt_apic_ids () ;
 int setidt (int ,int ,int ,int ,int ) ;
 int start_all_aps () ;
 int topo_probe () ;

void
cpu_mp_start(void)
{
 int i;


 for (i = 0; i < MAXCPU; i++) {
  cpu_apic_ids[i] = -1;
 }


 setidt(IPI_INVLTLB, IDTVEC(invltlb),
        SDT_SYS386IGT, SEL_KPL, GSEL(GCODE_SEL, SEL_KPL));
 setidt(IPI_INVLPG, IDTVEC(invlpg),
        SDT_SYS386IGT, SEL_KPL, GSEL(GCODE_SEL, SEL_KPL));
 setidt(IPI_INVLRNG, IDTVEC(invlrng),
        SDT_SYS386IGT, SEL_KPL, GSEL(GCODE_SEL, SEL_KPL));


 setidt(IPI_INVLCACHE, IDTVEC(invlcache),
        SDT_SYS386IGT, SEL_KPL, GSEL(GCODE_SEL, SEL_KPL));


 setidt(IPI_RENDEZVOUS, IDTVEC(rendezvous),
        SDT_SYS386IGT, SEL_KPL, GSEL(GCODE_SEL, SEL_KPL));


 setidt(IPI_BITMAP_VECTOR, IDTVEC(ipi_intr_bitmap_handler),
        SDT_SYS386IGT, SEL_KPL, GSEL(GCODE_SEL, SEL_KPL));


 setidt(IPI_STOP, IDTVEC(cpustop),
        SDT_SYS386IGT, SEL_KPL, GSEL(GCODE_SEL, SEL_KPL));


 setidt(IPI_SUSPEND, IDTVEC(cpususpend),
        SDT_SYS386IGT, SEL_KPL, GSEL(GCODE_SEL, SEL_KPL));


 if (boot_cpu_id == -1) {
  boot_cpu_id = PCPU_GET(apic_id);
  cpu_info[boot_cpu_id].cpu_bsp = 1;
 } else
  KASSERT(boot_cpu_id == PCPU_GET(apic_id),
      ("BSP's APIC ID doesn't match boot_cpu_id"));


 topo_probe();

 assign_cpu_ids();


 start_all_aps();

 set_interrupt_apic_ids();
}
