
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;
struct proc {char* p_comm; } ;


 int DELAY (int) ;
 int KDB_WHY_WATCHDOG ;
 int MAXCOMLEN ;
 int atomic_subtract_int (int*,int) ;
 int bcopy (char*,char*,int) ;
 struct proc* curproc ;
 int kdb_enter (int ,char*) ;
 int printf (char*,...) ;
 int snprintf (char*,int,char*,int) ;
 int watchdog_cpu ;
 int watchdog_dontfire ;
 int watchdog_ipi_nmi () ;
 scalar_t__ watchdog_nmi ;
 int watchdog_timer ;

void
ap_watchdog(u_int cpuid)
{
 char old_pcomm[MAXCOMLEN + 1];
 struct proc *p;

 if (watchdog_cpu != cpuid)
  return;

 printf("watchdog started on cpu %d\n", cpuid);
 p = curproc;
 bcopy(p->p_comm, old_pcomm, MAXCOMLEN + 1);
 snprintf(p->p_comm, MAXCOMLEN + 1, "mp_watchdog cpu %d", cpuid);
 while (1) {
  DELAY(1000000);
  if (watchdog_cpu != cpuid)
   break;
  atomic_subtract_int(&watchdog_timer, 1);
  if (watchdog_timer < 4)
   printf("Watchdog timer: %d\n", watchdog_timer);
  if (watchdog_timer == 0 && watchdog_dontfire == 0) {
   printf("Watchdog firing!\n");
   watchdog_dontfire = 1;
   if (watchdog_nmi)
    watchdog_ipi_nmi();
   else
    kdb_enter(KDB_WHY_WATCHDOG, "mp_watchdog");
  }
 }
 bcopy(old_pcomm, p->p_comm, MAXCOMLEN + 1);
 printf("watchdog stopped on cpu %d\n", cpuid);
}
