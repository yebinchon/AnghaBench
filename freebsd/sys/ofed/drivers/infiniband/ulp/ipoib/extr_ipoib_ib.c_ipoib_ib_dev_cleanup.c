
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ipoib_dev_priv {int dummy; } ;


 int ipoib_ah_dev_cleanup (struct ipoib_dev_priv*) ;
 int ipoib_dbg (struct ipoib_dev_priv*,char*) ;
 int ipoib_mcast_dev_flush (struct ipoib_dev_priv*) ;
 int ipoib_mcast_stop_thread (struct ipoib_dev_priv*,int) ;
 int ipoib_transport_dev_cleanup (struct ipoib_dev_priv*) ;

void ipoib_ib_dev_cleanup(struct ipoib_dev_priv *priv)
{

 ipoib_dbg(priv, "cleaning up ib_dev\n");

 ipoib_mcast_stop_thread(priv, 1);
 ipoib_mcast_dev_flush(priv);

 ipoib_ah_dev_cleanup(priv);
 ipoib_transport_dev_cleanup(priv);
}
