
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ daddr_t ;


 int swp_pager_freeswapspace (scalar_t__,scalar_t__) ;

__attribute__((used)) static void
swp_pager_update_freerange(daddr_t *start, daddr_t *num, daddr_t addr)
{

 if (*start + *num == addr) {
  (*num)++;
 } else {
  swp_pager_freeswapspace(*start, *num);
  *start = addr;
  *num = 1;
 }
}
