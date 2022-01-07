
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int printf (char*,...) ;
 int swap_maxpages ;
 int swap_total ;

__attribute__((used)) static void
swapon_check_swzone(void)
{


 if (swap_total > swap_maxpages / 2) {
  printf("warning: total configured swap (%lu pages) "
      "exceeds maximum recommended amount (%lu pages).\n",
      swap_total, swap_maxpages / 2);
  printf("warning: increase kern.maxswzone "
      "or reduce amount of swap.\n");
 }
}
