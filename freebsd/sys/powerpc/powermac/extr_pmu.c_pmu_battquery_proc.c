
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pmu_softc {int dummy; } ;
struct pmu_battstate {int dummy; } ;
typedef int cur_batt ;


 int bzero (struct pmu_battstate*,int) ;
 int curproc ;
 struct pmu_softc* device_get_softc (int ) ;
 int hz ;
 int kproc_suspend_check (int ) ;
 int pause (char*,int ) ;
 int pmu ;
 int pmu_battery_notify (struct pmu_battstate*,struct pmu_battstate*) ;
 int pmu_query_battery (struct pmu_softc*,int ,struct pmu_battstate*) ;

__attribute__((used)) static void
pmu_battquery_proc()
{
 struct pmu_softc *sc;
 struct pmu_battstate batt;
 struct pmu_battstate cur_batt;
 int error;

 sc = device_get_softc(pmu);

 bzero(&cur_batt, sizeof(cur_batt));
 while (1) {
  kproc_suspend_check(curproc);
  error = pmu_query_battery(sc, 0, &batt);
  pmu_battery_notify(&batt, &cur_batt);
  cur_batt = batt;
  pause("pmu_batt", hz);
 }
}
