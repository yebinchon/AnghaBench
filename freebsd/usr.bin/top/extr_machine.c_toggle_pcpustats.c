
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ncpus ;
 int update_layout () ;

void
toggle_pcpustats(void)
{

 if (ncpus == 1)
  return;
 update_layout();
}
