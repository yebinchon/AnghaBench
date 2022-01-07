
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_7__ ;
typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


typedef void* u64 ;
struct mlx4_mpt_entry {int dummy; } ;
struct TYPE_15__ {int access; int mtt; void* size; void* iova; } ;
struct mlx4_ib_mr {TYPE_3__ mmr; TYPE_7__* umem; } ;
struct mlx4_ib_dev {int dev; } ;
struct ib_udata {int dummy; } ;
struct ib_pd {int dummy; } ;
struct ib_mr {TYPE_1__* uobject; int device; } ;
struct TYPE_16__ {int page_size; } ;
struct TYPE_14__ {int pdn; } ;
struct TYPE_13__ {int context; } ;


 int IB_ACCESS_LOCAL_WRITE ;
 int IB_MR_REREG_ACCESS ;
 int IB_MR_REREG_PD ;
 int IB_MR_REREG_TRANS ;
 scalar_t__ IS_ERR (TYPE_7__*) ;
 int PTR_ERR (TYPE_7__*) ;
 int convert_access (int) ;
 TYPE_7__* ib_umem_get (int ,void*,void*,int,int ) ;
 int ib_umem_page_count (TYPE_7__*) ;
 int ib_umem_release (TYPE_7__*) ;
 int ilog2 (int ) ;
 int mlx4_ib_umem_write_mtt (struct mlx4_ib_dev*,int *,TYPE_7__*) ;
 int mlx4_mr_hw_change_access (int ,struct mlx4_mpt_entry*,int ) ;
 int mlx4_mr_hw_change_pd (int ,struct mlx4_mpt_entry*,int ) ;
 int mlx4_mr_hw_get_mpt (int ,TYPE_3__*,struct mlx4_mpt_entry***) ;
 int mlx4_mr_hw_put_mpt (int ,struct mlx4_mpt_entry**) ;
 int mlx4_mr_hw_write_mpt (int ,TYPE_3__*,struct mlx4_mpt_entry**) ;
 int mlx4_mr_rereg_mem_cleanup (int ,TYPE_3__*) ;
 int mlx4_mr_rereg_mem_write (int ,TYPE_3__*,void*,void*,int,int,struct mlx4_mpt_entry*) ;
 struct mlx4_ib_dev* to_mdev (int ) ;
 struct mlx4_ib_mr* to_mmr (struct ib_mr*) ;
 TYPE_2__* to_mpd (struct ib_pd*) ;

int mlx4_ib_rereg_user_mr(struct ib_mr *mr, int flags,
     u64 start, u64 length, u64 virt_addr,
     int mr_access_flags, struct ib_pd *pd,
     struct ib_udata *udata)
{
 struct mlx4_ib_dev *dev = to_mdev(mr->device);
 struct mlx4_ib_mr *mmr = to_mmr(mr);
 struct mlx4_mpt_entry *mpt_entry;
 struct mlx4_mpt_entry **pmpt_entry = &mpt_entry;
 int err;





 err = mlx4_mr_hw_get_mpt(dev->dev, &mmr->mmr, &pmpt_entry);

 if (err)
  return err;

 if (flags & IB_MR_REREG_PD) {
  err = mlx4_mr_hw_change_pd(dev->dev, *pmpt_entry,
        to_mpd(pd)->pdn);

  if (err)
   goto release_mpt_entry;
 }

 if (flags & IB_MR_REREG_ACCESS) {
  err = mlx4_mr_hw_change_access(dev->dev, *pmpt_entry,
            convert_access(mr_access_flags));

  if (err)
   goto release_mpt_entry;
 }

 if (flags & IB_MR_REREG_TRANS) {
  int shift;
  int n;

  mlx4_mr_rereg_mem_cleanup(dev->dev, &mmr->mmr);
  ib_umem_release(mmr->umem);
  mmr->umem = ib_umem_get(mr->uobject->context, start, length,
     mr_access_flags |
     IB_ACCESS_LOCAL_WRITE,
     0);
  if (IS_ERR(mmr->umem)) {
   err = PTR_ERR(mmr->umem);

   mmr->umem = ((void*)0);
   goto release_mpt_entry;
  }
  n = ib_umem_page_count(mmr->umem);
  shift = ilog2(mmr->umem->page_size);

  err = mlx4_mr_rereg_mem_write(dev->dev, &mmr->mmr,
           virt_addr, length, n, shift,
           *pmpt_entry);
  if (err) {
   ib_umem_release(mmr->umem);
   goto release_mpt_entry;
  }
  mmr->mmr.iova = virt_addr;
  mmr->mmr.size = length;

  err = mlx4_ib_umem_write_mtt(dev, &mmr->mmr.mtt, mmr->umem);
  if (err) {
   mlx4_mr_rereg_mem_cleanup(dev->dev, &mmr->mmr);
   ib_umem_release(mmr->umem);
   goto release_mpt_entry;
  }
 }




 err = mlx4_mr_hw_write_mpt(dev->dev, &mmr->mmr, pmpt_entry);
 if (!err && flags & IB_MR_REREG_ACCESS)
  mmr->mmr.access = mr_access_flags;

release_mpt_entry:
 mlx4_mr_hw_put_mpt(dev->dev, pmpt_entry);

 return err;
}
