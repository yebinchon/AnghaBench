
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CR0_WP ;
 int load_cr0 (int) ;
 int rcr0 () ;

void
restore_wp(bool old_wp)
{

 if (old_wp)
  load_cr0(rcr0() | CR0_WP);
}
