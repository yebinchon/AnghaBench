
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ SLIST_EMPTY (int *) ;
 int fans ;
 int hz ;
 int kproc_exit (int ) ;
 int pause (char*,int ) ;
 int pmac_therm_manage_fans () ;

__attribute__((used)) static void
fan_management_proc(void)
{

 if (SLIST_EMPTY(&fans))
  kproc_exit(0);

 while (1) {
  pmac_therm_manage_fans();
  pause("pmac_therm", hz);
 }
}
