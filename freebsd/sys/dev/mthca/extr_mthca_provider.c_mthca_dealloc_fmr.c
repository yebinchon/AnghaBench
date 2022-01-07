
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mthca_fmr {int dummy; } ;
struct ib_fmr {int device; } ;


 int kfree (struct mthca_fmr*) ;
 int mthca_free_fmr (int ,struct mthca_fmr*) ;
 int to_mdev (int ) ;
 struct mthca_fmr* to_mfmr (struct ib_fmr*) ;

__attribute__((used)) static int mthca_dealloc_fmr(struct ib_fmr *fmr)
{
 struct mthca_fmr *mfmr = to_mfmr(fmr);
 int err;

 err = mthca_free_fmr(to_mdev(fmr->device), mfmr);
 if (err)
  return err;

 kfree(mfmr);
 return 0;
}
