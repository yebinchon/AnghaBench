
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct acpi_softc {int dummy; } ;
struct TYPE_5__ {TYPE_1__* mr_op; } ;
struct TYPE_4__ {int (* reinit ) (TYPE_2__*) ;} ;


 int AcpiSetFirmwareWakingVector (int ,int ) ;
 int CPU_EMPTY (int *) ;
 int PCPU_SET (int ,int ) ;
 int acpi_wakeup_cpus (struct acpi_softc*) ;
 int initializecpu () ;
 int intr_resume (int) ;
 int lapic_xapic_mode () ;
 int mca_resume () ;
 TYPE_2__ mem_range_softc ;
 int pmap_init_pat () ;
 int resume_cpus (int ) ;
 int stub1 (TYPE_2__*) ;
 int suspcpus ;
 int switchticks ;
 int switchtime ;
 int ticks ;
 int ucode_reload () ;
 int vmm_resume_p () ;

int
acpi_wakeup_machdep(struct acpi_softc *sc, int state, int sleep_result,
    int intr_enabled)
{

 if (sleep_result == -1)
  return (sleep_result);

 if (!intr_enabled) {

  if (sleep_result == 1) {
   ucode_reload();
   pmap_init_pat();
   initializecpu();
   PCPU_SET(switchtime, 0);
   PCPU_SET(switchticks, ticks);







  }





  mca_resume();

  if (vmm_resume_p != ((void*)0))
   vmm_resume_p();

  intr_resume( 0);

  AcpiSetFirmwareWakingVector(0, 0);
 } else {

  if (sleep_result == 1 && mem_range_softc.mr_op != ((void*)0) &&
      mem_range_softc.mr_op->reinit != ((void*)0))
   mem_range_softc.mr_op->reinit(&mem_range_softc);
 }

 return (sleep_result);
}
