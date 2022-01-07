
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int HRDBG (char*) ;
 int refresh_swrun_tbl () ;

void
init_swrun_tbl(void)
{

 refresh_swrun_tbl();
 HRDBG("done");
}
