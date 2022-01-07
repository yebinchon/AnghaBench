
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char uint8_t ;
struct pmu_softc {int dummy; } ;


 int PMU_CPU_SPEED ;
 struct pmu_softc* device_get_softc (int ) ;
 int mb () ;
 int mtdec (int) ;
 int platform_sleep () ;
 int pmu ;
 int pmu_send (struct pmu_softc*,int ,int,char*,int,char*) ;
 int pmu_write_reg (struct pmu_softc*,int ,int) ;
 int spinlock_enter () ;
 int spinlock_exit () ;
 int unin_chip_sleep (int *,int) ;
 int unin_chip_wake (int *) ;
 int vIER ;

int
pmu_set_speed(int low_speed)
{
 struct pmu_softc *sc;
 uint8_t sleepcmd[] = {'W', 'O', 'O', 'F', 0};
 uint8_t resp[16];

 sc = device_get_softc(pmu);
 pmu_write_reg(sc, vIER, 0x10);
 spinlock_enter();
 mtdec(0x7fffffff);
 mb();
 mtdec(0x7fffffff);

 sleepcmd[4] = low_speed;
 pmu_send(sc, PMU_CPU_SPEED, 5, sleepcmd, 16, resp);
 unin_chip_sleep(((void*)0), 1);
 platform_sleep();
 unin_chip_wake(((void*)0));

 mtdec(1);
 spinlock_exit();
 pmu_write_reg(sc, vIER, 0x90);

 return (0);
}
