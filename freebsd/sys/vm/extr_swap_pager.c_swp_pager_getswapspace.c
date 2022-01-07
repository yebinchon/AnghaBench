
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct swdevt {int sw_flags; scalar_t__ sw_first; int sw_used; int sw_blist; } ;
typedef scalar_t__ daddr_t ;


 int BLIST_MAX_ALLOC ;
 scalar_t__ SWAPBLK_NONE ;
 int SW_CLOSING ;
 int TAILQ_EMPTY (int *) ;
 struct swdevt* TAILQ_FIRST (int *) ;
 struct swdevt* TAILQ_NEXT (struct swdevt*,int ) ;
 scalar_t__ blist_alloc (int ,int*,int) ;
 int imin (int ,int) ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 int printf (char*,int) ;
 int sw_dev_mtx ;
 int sw_list ;
 int swap_pager_almost_full ;
 int swap_pager_avail ;
 int swap_pager_full ;
 struct swdevt* swdevhd ;
 int swp_sizecheck () ;
 int swtailq ;

__attribute__((used)) static daddr_t
swp_pager_getswapspace(int *io_npages, int limit)
{
 daddr_t blk;
 struct swdevt *sp;
 int mpages, npages;

 blk = SWAPBLK_NONE;
 mpages = *io_npages;
 npages = imin(BLIST_MAX_ALLOC, mpages);
 mtx_lock(&sw_dev_mtx);
 sp = swdevhd;
 while (!TAILQ_EMPTY(&swtailq)) {
  if (sp == ((void*)0))
   sp = TAILQ_FIRST(&swtailq);
  if ((sp->sw_flags & SW_CLOSING) == 0)
   blk = blist_alloc(sp->sw_blist, &npages, mpages);
  if (blk != SWAPBLK_NONE)
   break;
  sp = TAILQ_NEXT(sp, sw_list);
  if (swdevhd == sp) {
   if (npages <= limit)
    break;
   mpages = npages - 1;
   npages >>= 1;
  }
 }
 if (blk != SWAPBLK_NONE) {
  *io_npages = npages;
  blk += sp->sw_first;
  sp->sw_used += npages;
  swap_pager_avail -= npages;
  swp_sizecheck();
  swdevhd = TAILQ_NEXT(sp, sw_list);
 } else {
  if (swap_pager_full != 2) {
   printf("swp_pager_getswapspace(%d): failed\n",
       *io_npages);
   swap_pager_full = 2;
   swap_pager_almost_full = 1;
  }
  swdevhd = ((void*)0);
 }
 mtx_unlock(&sw_dev_mtx);
 return (blk);
}
