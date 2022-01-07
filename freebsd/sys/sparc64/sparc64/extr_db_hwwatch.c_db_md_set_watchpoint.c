
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int db_expr_t ;


 int db_printf (char*,int ) ;
 scalar_t__ watch_virt_active () ;
 int watch_virt_get (int*) ;
 int watch_virt_set (int ,int ) ;

int
db_md_set_watchpoint(db_expr_t addr, db_expr_t size)
{
 int dummy;

 if (watch_virt_active()) {
  db_printf("Overwriting previously active watch point at "
      "0x%lx\n", watch_virt_get(&dummy));
 }
 return (watch_virt_set(addr, size));
}
