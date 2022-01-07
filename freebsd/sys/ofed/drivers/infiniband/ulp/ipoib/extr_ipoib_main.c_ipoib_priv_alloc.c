
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ipoib_dev_priv {int broadcastaddr; int ah_reap_task; int restart_task; int flush_heavy; int flush_normal; int flush_light; int carrier_on_task; int mcast_task; int pkey_poll_task; int multicast_list; int dead_ahs; int child_intfs; int path_list; int vlan_mutex; int drain_lock; int lock; } ;


 int INFINIBAND_ALEN ;
 int INIT_DELAYED_WORK (int *,int ) ;
 int INIT_LIST_HEAD (int *) ;
 int INIT_WORK (int *,int ) ;
 int M_TEMP ;
 int M_WAITOK ;
 int M_ZERO ;
 int ipoib_ib_dev_flush_heavy ;
 int ipoib_ib_dev_flush_light ;
 int ipoib_ib_dev_flush_normal ;
 int ipoib_mcast_carrier_on_task ;
 int ipoib_mcast_join_task ;
 int ipoib_mcast_restart_task ;
 int ipoib_pkey_poll ;
 int ipoib_reap_ah ;
 int ipv4_bcast_addr ;
 struct ipoib_dev_priv* malloc (int,int ,int) ;
 int memcpy (int ,int ,int ) ;
 int mutex_init (int *) ;
 int spin_lock_init (int *) ;

__attribute__((used)) static struct ipoib_dev_priv *
ipoib_priv_alloc(void)
{
 struct ipoib_dev_priv *priv;

 priv = malloc(sizeof(struct ipoib_dev_priv), M_TEMP, M_ZERO|M_WAITOK);
 spin_lock_init(&priv->lock);
 spin_lock_init(&priv->drain_lock);
 mutex_init(&priv->vlan_mutex);
 INIT_LIST_HEAD(&priv->path_list);
 INIT_LIST_HEAD(&priv->child_intfs);
 INIT_LIST_HEAD(&priv->dead_ahs);
 INIT_LIST_HEAD(&priv->multicast_list);
 INIT_DELAYED_WORK(&priv->pkey_poll_task, ipoib_pkey_poll);
 INIT_DELAYED_WORK(&priv->mcast_task, ipoib_mcast_join_task);
 INIT_WORK(&priv->carrier_on_task, ipoib_mcast_carrier_on_task);
 INIT_WORK(&priv->flush_light, ipoib_ib_dev_flush_light);
 INIT_WORK(&priv->flush_normal, ipoib_ib_dev_flush_normal);
 INIT_WORK(&priv->flush_heavy, ipoib_ib_dev_flush_heavy);
 INIT_WORK(&priv->restart_task, ipoib_mcast_restart_task);
 INIT_DELAYED_WORK(&priv->ah_reap_task, ipoib_reap_ah);
 memcpy(priv->broadcastaddr, ipv4_bcast_addr, INFINIBAND_ALEN);

 return (priv);
}
