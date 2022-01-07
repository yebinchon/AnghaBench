
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ipoib_dev_priv {int dead_ahs; } ;


 scalar_t__ HZ ;
 int __ipoib_reap_ah (struct ipoib_dev_priv*) ;
 int ipoib_warn (struct ipoib_dev_priv*,char*) ;
 unsigned long jiffies ;
 int list_empty (int *) ;
 int msleep (int) ;
 scalar_t__ time_after (unsigned long,scalar_t__) ;

__attribute__((used)) static void ipoib_ah_dev_cleanup(struct ipoib_dev_priv *priv)
{
 unsigned long begin;

 begin = jiffies;

 while (!list_empty(&priv->dead_ahs)) {
  __ipoib_reap_ah(priv);

  if (time_after(jiffies, begin + HZ)) {
   ipoib_warn(priv, "timing out; will leak address handles\n");
   break;
  }

  msleep(1);
 }
}
