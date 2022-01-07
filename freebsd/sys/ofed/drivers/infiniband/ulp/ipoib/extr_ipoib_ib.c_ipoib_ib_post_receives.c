
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ipoib_dev_priv {int dummy; } ;


 int EIO ;
 int ENOMEM ;
 int ipoib_alloc_rx_mb (struct ipoib_dev_priv*,int) ;
 scalar_t__ ipoib_ib_post_receive (struct ipoib_dev_priv*,int) ;
 int ipoib_recvq_size ;
 int ipoib_warn (struct ipoib_dev_priv*,char*,int) ;

__attribute__((used)) static int ipoib_ib_post_receives(struct ipoib_dev_priv *priv)
{
 int i;

 for (i = 0; i < ipoib_recvq_size; ++i) {
  if (!ipoib_alloc_rx_mb(priv, i)) {
   ipoib_warn(priv, "failed to allocate receive buffer %d\n", i);
   return -ENOMEM;
  }
  if (ipoib_ib_post_receive(priv, i)) {
   ipoib_warn(priv, "ipoib_ib_post_receive failed for buf %d\n", i);
   return -EIO;
  }
 }

 return 0;
}
