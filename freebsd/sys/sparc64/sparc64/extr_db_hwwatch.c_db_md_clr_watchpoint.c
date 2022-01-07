
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int db_expr_t ;


 int watch_virt_clear () ;

int
db_md_clr_watchpoint(db_expr_t addr, db_expr_t size)
{

 watch_virt_clear();
 return (0);
}
