
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ nswap_hiwat ;
 scalar_t__ nswap_lowat ;
 int printf (char*) ;
 int swap_pager_almost_full ;
 scalar_t__ swap_pager_avail ;
 scalar_t__ swap_pager_full ;

__attribute__((used)) static void
swp_sizecheck(void)
{

 if (swap_pager_avail < nswap_lowat) {
  if (swap_pager_almost_full == 0) {
   printf("swap_pager: out of swap space\n");
   swap_pager_almost_full = 1;
  }
 } else {
  swap_pager_full = 0;
  if (swap_pager_avail > nswap_hiwat)
   swap_pager_almost_full = 0;
 }
}
