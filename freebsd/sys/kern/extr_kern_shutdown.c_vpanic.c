
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int va_list ;
struct thread {int td_stopsched; int td_flags; } ;
typedef int intmax_t ;
typedef int cpuset_t ;
typedef int buf ;


 int CPU_CLR (int,int *) ;
 int KDB_WHY_PANIC ;
 int PCPU_GET (int ) ;
 int RB_AUTOBOOT ;
 int RB_DUMP ;
 int RB_NOSYNC ;
 int RB_POWERCYCLE ;
 int RB_POWEROFF ;
 int TDF_INPANIC ;
 int all_cpus ;
 int cngrab () ;
 int cpuid ;
 struct thread* curthread ;
 scalar_t__ debugger_on_panic ;
 int kdb_active ;
 int kdb_backtrace () ;
 int kdb_enter (int ,char*) ;
 int kern_reboot (int) ;
 char const* panicstr ;
 scalar_t__ powercycle_on_panic ;
 scalar_t__ poweroff_on_panic ;
 int printf (char*,...) ;
 int spinlock_enter () ;
 int stop_cpus_hard (int ) ;
 int sync_on_panic ;
 scalar_t__ time_second ;
 scalar_t__ trace_all_panics ;
 scalar_t__ trace_on_panic ;
 int vprintf (char const*,int ) ;
 int vsnprintf (char*,int,char const*,int ) ;

void
vpanic(const char *fmt, va_list ap)
{



 struct thread *td = curthread;
 int bootopt, newpanic;
 static char buf[256];

 spinlock_enter();
 td->td_stopsched = 1;

 bootopt = RB_AUTOBOOT;
 newpanic = 0;
 if (panicstr)
  bootopt |= RB_NOSYNC;
 else {
  bootopt |= RB_DUMP;
  panicstr = fmt;
  newpanic = 1;
 }

 if (newpanic) {
  (void)vsnprintf(buf, sizeof(buf), fmt, ap);
  panicstr = buf;
  cngrab();
  printf("panic: %s\n", buf);
 } else {
  printf("panic: ");
  vprintf(fmt, ap);
  printf("\n");
 }



 printf("time = %jd\n", (intmax_t )time_second);







 td->td_flags |= TDF_INPANIC;

 if (!sync_on_panic)
  bootopt |= RB_NOSYNC;
 if (poweroff_on_panic)
  bootopt |= RB_POWEROFF;
 if (powercycle_on_panic)
  bootopt |= RB_POWERCYCLE;
 kern_reboot(bootopt);
}
