
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ipoib_dev_priv {int poll_timer; } ;
struct ib_cq {int dummy; } ;


 int jiffies ;
 int mod_timer (int *,int ) ;

void ipoib_send_comp_handler(struct ib_cq *cq, void *dev_ptr)
{
 struct ipoib_dev_priv *priv = dev_ptr;

 mod_timer(&priv->poll_timer, jiffies);
}
