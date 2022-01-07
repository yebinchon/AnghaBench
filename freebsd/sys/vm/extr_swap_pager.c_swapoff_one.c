
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u_long ;
struct ucred {int dummy; } ;
struct swdevt {scalar_t__ sw_nblks; int sw_blist; int * sw_id; int (* sw_close ) (int ,struct swdevt*) ;int sw_flags; int sw_vp; } ;


 int ENOMEM ;
 int LK_EXCLUSIVE ;
 int LK_RETRY ;
 int M_VMPGDATA ;
 int SA_XLOCKED ;
 int SW_CLOSING ;
 int TAILQ_REMOVE (int *,struct swdevt*,int ) ;
 int VOP_UNLOCK (int ,int ) ;
 int blist_destroy (int ) ;
 scalar_t__ blist_fill (int ,int ,scalar_t__) ;
 int curthread ;
 int free (struct swdevt*,int ) ;
 int mac_system_check_swapoff (struct ucred*,int ) ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 scalar_t__ nswap_lowat ;
 scalar_t__ nswapdev ;
 int stub1 (int ,struct swdevt*) ;
 int sw_dev_mtx ;
 int sw_list ;
 int swap_pager_almost_full ;
 scalar_t__ swap_pager_avail ;
 int swap_pager_full ;
 int swap_pager_swapoff (struct swdevt*) ;
 int swap_total ;
 int swdev_syscall_lock ;
 struct swdevt* swdevhd ;
 int swtailq ;
 int sx_assert (int *,int ) ;
 scalar_t__ vm_free_count () ;
 int vn_lock (int ,int) ;

__attribute__((used)) static int
swapoff_one(struct swdevt *sp, struct ucred *cred)
{
 u_long nblks;




 sx_assert(&swdev_syscall_lock, SA_XLOCKED);







 nblks = sp->sw_nblks;







 if (vm_free_count() + swap_pager_avail < nblks + nswap_lowat)
  return (ENOMEM);




 mtx_lock(&sw_dev_mtx);
 sp->sw_flags |= SW_CLOSING;
 swap_pager_avail -= blist_fill(sp->sw_blist, 0, nblks);
 swap_total -= nblks;
 mtx_unlock(&sw_dev_mtx);




 swap_pager_swapoff(sp);

 sp->sw_close(curthread, sp);
 mtx_lock(&sw_dev_mtx);
 sp->sw_id = ((void*)0);
 TAILQ_REMOVE(&swtailq, sp, sw_list);
 nswapdev--;
 if (nswapdev == 0) {
  swap_pager_full = 2;
  swap_pager_almost_full = 1;
 }
 if (swdevhd == sp)
  swdevhd = ((void*)0);
 mtx_unlock(&sw_dev_mtx);
 blist_destroy(sp->sw_blist);
 free(sp, M_VMPGDATA);
 return (0);
}
