
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ipoib_dev_priv {int dummy; } ;
struct ipoib_ah {int ah; int ref; scalar_t__ last_send; struct ipoib_dev_priv* priv; } ;
struct ib_pd {int dummy; } ;
struct ib_ah_attr {int dummy; } ;


 int GFP_KERNEL ;
 scalar_t__ IS_ERR (int ) ;
 int ib_create_ah (struct ib_pd*,struct ib_ah_attr*) ;
 int ipoib_dbg (struct ipoib_dev_priv*,char*,int ) ;
 int kfree (struct ipoib_ah*) ;
 struct ipoib_ah* kmalloc (int,int ) ;
 int kref_init (int *) ;

struct ipoib_ah *ipoib_create_ah(struct ipoib_dev_priv *priv,
     struct ib_pd *pd, struct ib_ah_attr *attr)
{
 struct ipoib_ah *ah;

 ah = kmalloc(sizeof *ah, GFP_KERNEL);
 if (!ah)
  return ((void*)0);

 ah->priv = priv;
 ah->last_send = 0;
 kref_init(&ah->ref);

 ah->ah = ib_create_ah(pd, attr);
 if (IS_ERR(ah->ah)) {
  kfree(ah);
  ah = ((void*)0);
 } else
  ipoib_dbg(priv, "Created ah %p\n", ah->ah);

 return ah;
}
