
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ib_mr {int dummy; } ;
struct mthca_mr {struct ib_mr ibmr; int * umem; } ;
struct ib_pd {int device; } ;
struct TYPE_2__ {int pd_num; } ;


 int ENOMEM ;
 struct ib_mr* ERR_PTR (int) ;
 int GFP_KERNEL ;
 int convert_access (int) ;
 int kfree (struct mthca_mr*) ;
 struct mthca_mr* kmalloc (int,int ) ;
 int mthca_mr_alloc_notrans (int ,int ,int ,struct mthca_mr*) ;
 int to_mdev (int ) ;
 TYPE_1__* to_mpd (struct ib_pd*) ;

__attribute__((used)) static struct ib_mr *mthca_get_dma_mr(struct ib_pd *pd, int acc)
{
 struct mthca_mr *mr;
 int err;

 mr = kmalloc(sizeof *mr, GFP_KERNEL);
 if (!mr)
  return ERR_PTR(-ENOMEM);

 err = mthca_mr_alloc_notrans(to_mdev(pd->device),
         to_mpd(pd)->pd_num,
         convert_access(acc), mr);

 if (err) {
  kfree(mr);
  return ERR_PTR(err);
 }

 mr->umem = ((void*)0);

 return &mr->ibmr;
}
