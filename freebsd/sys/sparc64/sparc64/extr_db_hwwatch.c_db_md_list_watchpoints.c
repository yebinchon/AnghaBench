
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vm_paddr_t ;
typedef int vm_offset_t ;


 int db_printf (char*) ;
 int db_watch_print (int ,int) ;
 scalar_t__ watch_phys_active () ;
 int watch_phys_get (int*) ;
 scalar_t__ watch_virt_active () ;
 int watch_virt_get (int*) ;

void
db_md_list_watchpoints(void)
{
 vm_offset_t va;
 vm_paddr_t pa;
 int bm;

 db_printf("Physical address watchpoint:\n");
 if (watch_phys_active()) {
  pa = watch_phys_get(&bm);
  db_watch_print(pa, bm);
 } else
  db_printf("\tnot active.\n");
 db_printf("Virtual address watchpoint:\n");
 if (watch_virt_active()) {
  va = watch_virt_get(&bm);
  db_watch_print(va, bm);
 } else
  db_printf("\tnot active.\n");
}
