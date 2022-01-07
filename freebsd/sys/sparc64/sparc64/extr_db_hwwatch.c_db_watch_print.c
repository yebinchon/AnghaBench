
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ vm_offset_t ;
typedef int u_long ;


 int db_printf (char*,...) ;

void
db_watch_print(vm_offset_t wp, int bm)
{
 int i;

 db_printf("\tat 0x%lx, active bytes: ", (u_long)wp);
 for (i = 0; i < 8; i++) {
  if ((bm & (1 << i)) != 0)
   db_printf("%d ", i);
 }
 if (bm == 0)
  db_printf("none");
 db_printf("\n");
}
