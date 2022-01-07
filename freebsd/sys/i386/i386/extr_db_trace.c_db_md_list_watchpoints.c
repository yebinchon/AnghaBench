
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dbreg {int * dr; } ;
typedef int db_addr_t ;


 int DBREG_DR7_ACCESS (int ,int) ;
 scalar_t__ DBREG_DR7_ENABLED (int ,int) ;
 int DBREG_DR7_LEN (int ,int) ;
 scalar_t__ DBREG_DRX (struct dbreg*,int) ;
 int DB_STGY_ANY ;
 int db_printf (char*,...) ;
 int db_printsym (int ,int ) ;
 int fill_dbregs (int *,struct dbreg*) ;
 int watchtype_str (int) ;

void
db_md_list_watchpoints(void)
{
 struct dbreg d;
 int i, len, type;

 fill_dbregs(((void*)0), &d);

 db_printf("\nhardware watchpoints:\n");
 db_printf("  watch    status        type  len     address\n");
 db_printf("  -----  --------  ----------  ---  ----------\n");
 for (i = 0; i < 4; i++) {
  if (DBREG_DR7_ENABLED(d.dr[7], i)) {
   type = DBREG_DR7_ACCESS(d.dr[7], i);
   len = DBREG_DR7_LEN(d.dr[7], i);
   db_printf("  %-5d  %-8s  %10s  %3d  ",
       i, "enabled", watchtype_str(type), len + 1);
   db_printsym((db_addr_t)DBREG_DRX(&d, i), DB_STGY_ANY);
   db_printf("\n");
  } else {
   db_printf("  %-5d  disabled\n", i);
  }
 }

 db_printf("\ndebug register values:\n");
 for (i = 0; i < 8; i++)
  if (i != 4 && i != 5)
   db_printf("  dr%d 0x%08x\n", i, DBREG_DRX(&d, i));
 db_printf("\n");
}
