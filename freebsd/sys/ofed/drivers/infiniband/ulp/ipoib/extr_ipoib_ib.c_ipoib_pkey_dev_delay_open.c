
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ipoib_dev_priv {int pkey_poll_task; int flags; } ;


 int HZ ;
 int IPOIB_PKEY_ASSIGNED ;
 int IPOIB_PKEY_STOP ;
 int clear_bit (int ,int *) ;
 int ipoib_pkey_dev_check_presence (struct ipoib_dev_priv*) ;
 int ipoib_workqueue ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int pkey_mutex ;
 int queue_delayed_work (int ,int *,int ) ;
 int test_bit (int ,int *) ;

int ipoib_pkey_dev_delay_open(struct ipoib_dev_priv *priv)
{



 ipoib_pkey_dev_check_presence(priv);


 if (!test_bit(IPOIB_PKEY_ASSIGNED, &priv->flags)) {
  mutex_lock(&pkey_mutex);
  clear_bit(IPOIB_PKEY_STOP, &priv->flags);
  queue_delayed_work(ipoib_workqueue,
       &priv->pkey_poll_task,
       HZ);
  mutex_unlock(&pkey_mutex);
  return 1;
 }

 return 0;
}
