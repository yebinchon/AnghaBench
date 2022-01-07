
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ipoib_dev_priv {int pkey_poll_task; int flags; int dev; } ;


 int IPOIB_FLAG_OPER_UP ;
 int IPOIB_PKEY_ASSIGNED ;
 int IPOIB_PKEY_STOP ;
 int LINK_STATE_DOWN ;
 int cancel_delayed_work (int *) ;
 int clear_bit (int ,int *) ;
 int flush_workqueue (int ) ;
 int if_link_state_change (int ,int ) ;
 int ipoib_dbg (struct ipoib_dev_priv*,char*) ;
 int ipoib_flush_paths (struct ipoib_dev_priv*) ;
 int ipoib_mcast_dev_flush (struct ipoib_dev_priv*) ;
 int ipoib_mcast_stop_thread (struct ipoib_dev_priv*,int) ;
 int ipoib_workqueue ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int pkey_mutex ;
 int set_bit (int ,int *) ;
 int test_bit (int ,int *) ;

int ipoib_ib_dev_down(struct ipoib_dev_priv *priv, int flush)
{

 ipoib_dbg(priv, "downing ib_dev\n");

 clear_bit(IPOIB_FLAG_OPER_UP, &priv->flags);
 if_link_state_change(priv->dev, LINK_STATE_DOWN);


 if (!test_bit(IPOIB_PKEY_ASSIGNED, &priv->flags)) {
  mutex_lock(&pkey_mutex);
  set_bit(IPOIB_PKEY_STOP, &priv->flags);
  cancel_delayed_work(&priv->pkey_poll_task);
  mutex_unlock(&pkey_mutex);
  if (flush)
   flush_workqueue(ipoib_workqueue);
 }

 ipoib_mcast_stop_thread(priv, flush);
 ipoib_mcast_dev_flush(priv);

 ipoib_flush_paths(priv);

 return 0;
}
