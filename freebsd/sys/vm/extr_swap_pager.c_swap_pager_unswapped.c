
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef TYPE_1__* vm_page_t ;
typedef scalar_t__ daddr_t ;
struct TYPE_3__ {int pindex; int object; } ;


 scalar_t__ SWAPBLK_NONE ;
 int SWM_POP ;
 int swp_pager_freeswapspace (scalar_t__,int) ;
 scalar_t__ swp_pager_meta_ctl (int ,int ,int ) ;

__attribute__((used)) static void
swap_pager_unswapped(vm_page_t m)
{
 daddr_t srcaddr;

 srcaddr = swp_pager_meta_ctl(m->object, m->pindex, SWM_POP);
 if (srcaddr != SWAPBLK_NONE)
  swp_pager_freeswapspace(srcaddr, 1);
}
