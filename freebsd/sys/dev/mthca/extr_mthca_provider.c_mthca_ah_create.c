
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ib_ah {int dummy; } ;
struct mthca_ah {struct ib_ah ibah; } ;
struct ib_udata {int dummy; } ;
struct ib_pd {int device; } ;
struct ib_ah_attr {int dummy; } ;


 int ENOMEM ;
 struct ib_ah* ERR_PTR (int) ;
 int GFP_ATOMIC ;
 int kfree (struct mthca_ah*) ;
 struct mthca_ah* kmalloc (int,int ) ;
 int mthca_create_ah (int ,int ,struct ib_ah_attr*,struct mthca_ah*) ;
 int to_mdev (int ) ;
 int to_mpd (struct ib_pd*) ;

__attribute__((used)) static struct ib_ah *mthca_ah_create(struct ib_pd *pd,
         struct ib_ah_attr *ah_attr,
         struct ib_udata *udata)
{
 int err;
 struct mthca_ah *ah;

 ah = kmalloc(sizeof *ah, GFP_ATOMIC);
 if (!ah)
  return ERR_PTR(-ENOMEM);

 err = mthca_create_ah(to_mdev(pd->device), to_mpd(pd), ah_attr, ah);
 if (err) {
  kfree(ah);
  return ERR_PTR(err);
 }

 return &ah->ibah;
}
