
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ipoib_dev_priv {int pkey; int flags; int ah_reap_task; int pkey_index; int port; int ca; } ;


 int HZ ;
 int IPOIB_FLAG_INITIALIZED ;
 int IPOIB_PKEY_ASSIGNED ;
 int IPOIB_STOP_REAPER ;
 int clear_bit (int ,int *) ;
 scalar_t__ ib_find_pkey (int ,int ,int,int *) ;
 int ipoib_cm_dev_open (struct ipoib_dev_priv*) ;
 int ipoib_ib_dev_stop (struct ipoib_dev_priv*,int) ;
 int ipoib_ib_post_receives (struct ipoib_dev_priv*) ;
 int ipoib_init_qp (struct ipoib_dev_priv*) ;
 int ipoib_warn (struct ipoib_dev_priv*,char*,int) ;
 int ipoib_workqueue ;
 int queue_delayed_work (int ,int *,int ) ;
 int set_bit (int ,int *) ;

int ipoib_ib_dev_open(struct ipoib_dev_priv *priv)
{
 int ret;

 if (ib_find_pkey(priv->ca, priv->port, priv->pkey, &priv->pkey_index)) {
  ipoib_warn(priv, "P_Key 0x%04x not found\n", priv->pkey);
  clear_bit(IPOIB_PKEY_ASSIGNED, &priv->flags);
  return -1;
 }
 set_bit(IPOIB_PKEY_ASSIGNED, &priv->flags);

 ret = ipoib_init_qp(priv);
 if (ret) {
  ipoib_warn(priv, "ipoib_init_qp returned %d\n", ret);
  return -1;
 }

 ret = ipoib_ib_post_receives(priv);
 if (ret) {
  ipoib_warn(priv, "ipoib_ib_post_receives returned %d\n", ret);
  ipoib_ib_dev_stop(priv, 1);
  return -1;
 }

 ret = ipoib_cm_dev_open(priv);
 if (ret) {
  ipoib_warn(priv, "ipoib_cm_dev_open returned %d\n", ret);
  ipoib_ib_dev_stop(priv, 1);
  return -1;
 }

 clear_bit(IPOIB_STOP_REAPER, &priv->flags);
 queue_delayed_work(ipoib_workqueue, &priv->ah_reap_task, HZ);

 set_bit(IPOIB_FLAG_INITIALIZED, &priv->flags);

 return 0;
}
