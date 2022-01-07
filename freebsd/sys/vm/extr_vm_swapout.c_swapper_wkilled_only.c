
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u_int ;


 scalar_t__ SWAPIN_INTERVAL ;
 int all_domains ;
 scalar_t__ last_swapin ;
 scalar_t__ swap_inprogress ;
 scalar_t__ ticks ;
 scalar_t__ vm_page_count_min_set (int *) ;

__attribute__((used)) static bool
swapper_wkilled_only(void)
{

 return (vm_page_count_min_set(&all_domains) || swap_inprogress > 0 ||
     (u_int)(ticks - last_swapin) < SWAPIN_INTERVAL);
}
