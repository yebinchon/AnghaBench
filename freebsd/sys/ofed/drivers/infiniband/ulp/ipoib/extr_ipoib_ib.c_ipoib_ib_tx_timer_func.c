
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ipoib_dev_priv {int dummy; } ;


 int drain_tx_cq (struct ipoib_dev_priv*) ;

__attribute__((used)) static void ipoib_ib_tx_timer_func(unsigned long ctx)
{
 drain_tx_cq((struct ipoib_dev_priv *)ctx);
}
