
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int key; } ;
struct TYPE_7__ {TYPE_2__ mr; } ;
struct ib_fmr {int lkey; int rkey; } ;
struct mlx4_ib_fmr {TYPE_3__ mfmr; struct ib_fmr ibfmr; } ;
struct mlx4_ib_dev {int dev; } ;
struct ib_pd {int device; } ;
struct ib_fmr_attr {int page_shift; int max_maps; int max_pages; } ;
struct TYPE_5__ {int pdn; } ;


 int ENOMEM ;
 struct ib_fmr* ERR_PTR (int) ;
 int GFP_KERNEL ;
 int convert_access (int) ;
 int kfree (struct mlx4_ib_fmr*) ;
 struct mlx4_ib_fmr* kmalloc (int,int ) ;
 int mlx4_fmr_alloc (int ,int ,int ,int ,int ,int ,TYPE_3__*) ;
 int mlx4_fmr_enable (int ,TYPE_3__*) ;
 int mlx4_mr_free (int ,TYPE_2__*) ;
 struct mlx4_ib_dev* to_mdev (int ) ;
 TYPE_1__* to_mpd (struct ib_pd*) ;

struct ib_fmr *mlx4_ib_fmr_alloc(struct ib_pd *pd, int acc,
     struct ib_fmr_attr *fmr_attr)
{
 struct mlx4_ib_dev *dev = to_mdev(pd->device);
 struct mlx4_ib_fmr *fmr;
 int err = -ENOMEM;

 fmr = kmalloc(sizeof *fmr, GFP_KERNEL);
 if (!fmr)
  return ERR_PTR(-ENOMEM);

 err = mlx4_fmr_alloc(dev->dev, to_mpd(pd)->pdn, convert_access(acc),
        fmr_attr->max_pages, fmr_attr->max_maps,
        fmr_attr->page_shift, &fmr->mfmr);
 if (err)
  goto err_free;

 err = mlx4_fmr_enable(to_mdev(pd->device)->dev, &fmr->mfmr);
 if (err)
  goto err_mr;

 fmr->ibfmr.rkey = fmr->ibfmr.lkey = fmr->mfmr.mr.key;

 return &fmr->ibfmr;

err_mr:
 (void) mlx4_mr_free(to_mdev(pd->device)->dev, &fmr->mfmr.mr);

err_free:
 kfree(fmr);

 return ERR_PTR(err);
}
