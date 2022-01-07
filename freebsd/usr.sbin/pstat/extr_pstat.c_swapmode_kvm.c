
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kvm_swap {int dummy; } ;


 int SWIF_DEV_PREFIX ;
 int kd ;
 int kvm_getswapinfo (int ,struct kvm_swap*,int,int ) ;
 int print_swap (struct kvm_swap*) ;
 int print_swap_header () ;
 int print_swap_total () ;

__attribute__((used)) static void
swapmode_kvm(void)
{
 struct kvm_swap kswap[16];
 int i, n;

 n = kvm_getswapinfo(kd, kswap, sizeof kswap / sizeof kswap[0],
     SWIF_DEV_PREFIX);

 print_swap_header();
 for (i = 0; i < n; ++i)
  print_swap(&kswap[i]);
 print_swap_total();
}
