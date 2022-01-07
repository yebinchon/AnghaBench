
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ daddr_t ;


 scalar_t__ SWAPBLK_NONE ;

__attribute__((used)) static void
swp_pager_init_freerange(daddr_t *start, daddr_t *num)
{

 *start = SWAPBLK_NONE;
 *num = 0;
}
