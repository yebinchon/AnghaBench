
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;


 int CR0_WP ;
 int load_cr0 (int) ;
 int rcr0 () ;

bool
disable_wp(void)
{
 u_int cr0;

 cr0 = rcr0();
 if ((cr0 & CR0_WP) == 0)
  return (0);
 load_cr0(cr0 & ~CR0_WP);
 return (1);
}
