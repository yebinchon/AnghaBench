
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int cnadd (int *) ;
 int gdb_cninit (int *) ;
 int gdb_cnprobe (int *) ;
 int gdb_consdev ;

void
gdb_consinit(void)
{
 gdb_cnprobe(&gdb_consdev);
 gdb_cninit(&gdb_consdev);
 cnadd(&gdb_consdev);
}
