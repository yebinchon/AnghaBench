
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ib_fmr {int dummy; } ;
struct mthca_fmr {struct ib_fmr ibmr; int attr; } ;
struct ib_pd {int device; } ;
struct ib_fmr_attr {int dummy; } ;
struct TYPE_2__ {int pd_num; } ;


 int ENOMEM ;
 struct ib_fmr* ERR_PTR (int) ;
 int GFP_KERNEL ;
 int convert_access (int) ;
 int kfree (struct mthca_fmr*) ;
 struct mthca_fmr* kmalloc (int,int ) ;
 int memcpy (int *,struct ib_fmr_attr*,int) ;
 int mthca_fmr_alloc (int ,int ,int ,struct mthca_fmr*) ;
 int to_mdev (int ) ;
 TYPE_1__* to_mpd (struct ib_pd*) ;

__attribute__((used)) static struct ib_fmr *mthca_alloc_fmr(struct ib_pd *pd, int mr_access_flags,
          struct ib_fmr_attr *fmr_attr)
{
 struct mthca_fmr *fmr;
 int err;

 fmr = kmalloc(sizeof *fmr, GFP_KERNEL);
 if (!fmr)
  return ERR_PTR(-ENOMEM);

 memcpy(&fmr->attr, fmr_attr, sizeof *fmr_attr);
 err = mthca_fmr_alloc(to_mdev(pd->device), to_mpd(pd)->pd_num,
        convert_access(mr_access_flags), fmr);

 if (err) {
  kfree(fmr);
  return ERR_PTR(err);
 }

 return &fmr->ibmr;
}
