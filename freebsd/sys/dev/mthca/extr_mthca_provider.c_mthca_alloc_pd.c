
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ib_pd {int dummy; } ;
struct mthca_pd {struct ib_pd ibpd; int pd_num; } ;
struct ib_udata {int dummy; } ;
struct ib_ucontext {int dummy; } ;
struct ib_device {int dummy; } ;
typedef int __u32 ;


 int EFAULT ;
 int ENOMEM ;
 struct ib_pd* ERR_PTR (int) ;
 int GFP_KERNEL ;
 scalar_t__ ib_copy_to_udata (struct ib_udata*,int *,int) ;
 int kfree (struct mthca_pd*) ;
 struct mthca_pd* kmalloc (int,int ) ;
 int mthca_pd_alloc (int ,int,struct mthca_pd*) ;
 int mthca_pd_free (int ,struct mthca_pd*) ;
 int to_mdev (struct ib_device*) ;

__attribute__((used)) static struct ib_pd *mthca_alloc_pd(struct ib_device *ibdev,
        struct ib_ucontext *context,
        struct ib_udata *udata)
{
 struct mthca_pd *pd;
 int err;

 pd = kmalloc(sizeof *pd, GFP_KERNEL);
 if (!pd)
  return ERR_PTR(-ENOMEM);

 err = mthca_pd_alloc(to_mdev(ibdev), !context, pd);
 if (err) {
  kfree(pd);
  return ERR_PTR(err);
 }

 if (context) {
  if (ib_copy_to_udata(udata, &pd->pd_num, sizeof (__u32))) {
   mthca_pd_free(to_mdev(ibdev), pd);
   kfree(pd);
   return ERR_PTR(-EFAULT);
  }
 }

 return &pd->ibpd;
}
