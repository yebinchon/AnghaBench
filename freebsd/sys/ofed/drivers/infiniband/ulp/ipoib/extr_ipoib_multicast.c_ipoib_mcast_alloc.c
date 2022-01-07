
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ipoib_mcast {int backoff; int pkt_queue; int list; int created; struct ipoib_dev_priv* priv; } ;
struct ipoib_dev_priv {int dummy; } ;


 int GFP_ATOMIC ;
 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 int bzero (int *,int) ;
 int jiffies ;
 struct ipoib_mcast* kzalloc (int,int ) ;

__attribute__((used)) static struct ipoib_mcast *ipoib_mcast_alloc(struct ipoib_dev_priv *priv,
          int can_sleep)
{
 struct ipoib_mcast *mcast;

 mcast = kzalloc(sizeof *mcast, can_sleep ? GFP_KERNEL : GFP_ATOMIC);
 if (!mcast)
  return ((void*)0);

 mcast->priv = priv;
 mcast->created = jiffies;
 mcast->backoff = 1;

 INIT_LIST_HEAD(&mcast->list);
 bzero(&mcast->pkt_queue, sizeof(mcast->pkt_queue));

 return mcast;
}
