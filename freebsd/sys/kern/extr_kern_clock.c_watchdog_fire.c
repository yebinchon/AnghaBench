
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uintmax_t ;
typedef scalar_t__ uint64_t ;
typedef scalar_t__ u_long ;


 int KDB_WHY_WATCHDOG ;
 scalar_t__* intrcnt ;
 char* intrnames ;
 int kdb_backtrace () ;
 int kdb_enter (int ,char*) ;
 int panic (char*) ;
 int printf (char*,...) ;
 int sintrcnt ;
 scalar_t__ strlen (char*) ;

__attribute__((used)) static void
watchdog_fire(void)
{
 int nintr;
 uint64_t inttotal;
 u_long *curintr;
 char *curname;

 curintr = intrcnt;
 curname = intrnames;
 inttotal = 0;
 nintr = sintrcnt / sizeof(u_long);

 printf("interrupt                   total\n");
 while (--nintr >= 0) {
  if (*curintr)
   printf("%-12s %20lu\n", curname, *curintr);
  curname += strlen(curname) + 1;
  inttotal += *curintr++;
 }
 printf("Total        %20ju\n", (uintmax_t)inttotal);





 panic("watchdog timeout");

}
