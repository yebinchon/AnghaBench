
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct consdev {int dummy; } ;


 int alt_break_state ;
 scalar_t__ kdb_active ;
 int kdb_alt_break (int,int *) ;
 int sbi_console_getchar () ;

__attribute__((used)) static int
riscv_cngetc(struct consdev *cp)
{
 int ch;
 ch = sbi_console_getchar();
 if (ch > 0 && ch < 0xff) {



  return (ch);
 }

 return (-1);
}
