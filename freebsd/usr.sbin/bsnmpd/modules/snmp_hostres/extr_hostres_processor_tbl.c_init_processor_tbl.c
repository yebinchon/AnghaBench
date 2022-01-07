
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int create_proc_table () ;
 int refresh_processor_tbl () ;

void
init_processor_tbl(void)
{


 create_proc_table();

 refresh_processor_tbl();
}
