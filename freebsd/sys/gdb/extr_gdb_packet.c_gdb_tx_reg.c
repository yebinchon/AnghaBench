
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned char* gdb_cpu_getreg (int,size_t*) ;
 int gdb_tx_char (char) ;
 int gdb_tx_mem (unsigned char*,size_t) ;

void
gdb_tx_reg(int regnum)
{
 unsigned char *regp;
 size_t regsz;

 regp = gdb_cpu_getreg(regnum, &regsz);
 if (regp == ((void*)0)) {

  while (regsz--) {
   gdb_tx_char('x');
   gdb_tx_char('x');
  }
 } else
  gdb_tx_mem(regp, regsz);
}
