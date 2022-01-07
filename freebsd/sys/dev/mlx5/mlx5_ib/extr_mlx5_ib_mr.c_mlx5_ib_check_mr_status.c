
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
struct mlx5_ib_mr {TYPE_1__* sig; } ;
struct TYPE_5__ {scalar_t__ key; scalar_t__ sig_err_offset; int err_type; } ;
struct ib_mr_status {int fail_status; TYPE_2__ sig_err; } ;
struct ib_mr {scalar_t__ lkey; } ;
struct TYPE_6__ {scalar_t__ key; } ;
struct TYPE_4__ {int sig_status_checked; int sig_err_exists; TYPE_3__ err_item; } ;


 int EINVAL ;
 int IB_MR_CHECK_SIG_STATUS ;
 int IB_SIG_BAD_GUARD ;
 int memcpy (TYPE_2__*,TYPE_3__*,int) ;
 int pr_err (char*) ;
 struct mlx5_ib_mr* to_mmr (struct ib_mr*) ;

int mlx5_ib_check_mr_status(struct ib_mr *ibmr, u32 check_mask,
       struct ib_mr_status *mr_status)
{
 struct mlx5_ib_mr *mmr = to_mmr(ibmr);
 int ret = 0;

 if (check_mask & ~IB_MR_CHECK_SIG_STATUS) {
  pr_err("Invalid status check mask\n");
  ret = -EINVAL;
  goto done;
 }

 mr_status->fail_status = 0;
 if (check_mask & IB_MR_CHECK_SIG_STATUS) {
  if (!mmr->sig) {
   ret = -EINVAL;
   pr_err("signature status check requested on a non-signature enabled MR\n");
   goto done;
  }

  mmr->sig->sig_status_checked = 1;
  if (!mmr->sig->sig_err_exists)
   goto done;

  if (ibmr->lkey == mmr->sig->err_item.key)
   memcpy(&mr_status->sig_err, &mmr->sig->err_item,
          sizeof(mr_status->sig_err));
  else {
   mr_status->sig_err.err_type = IB_SIG_BAD_GUARD;
   mr_status->sig_err.sig_err_offset = 0;
   mr_status->sig_err.key = mmr->sig->err_item.key;
  }

  mmr->sig->sig_err_exists = 0;
  mr_status->fail_status |= IB_MR_CHECK_SIG_STATUS;
 }

done:
 return ret;
}
