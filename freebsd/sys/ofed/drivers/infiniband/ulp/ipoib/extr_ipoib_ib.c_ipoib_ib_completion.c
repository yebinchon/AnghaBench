
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ipoib_dev_priv {int dummy; } ;
struct ib_cq {int dummy; } ;


 int ipoib_poll (struct ipoib_dev_priv*) ;

void ipoib_ib_completion(struct ib_cq *cq, void *dev_ptr)
{
 struct ipoib_dev_priv *priv = dev_ptr;

 ipoib_poll(priv);
}
