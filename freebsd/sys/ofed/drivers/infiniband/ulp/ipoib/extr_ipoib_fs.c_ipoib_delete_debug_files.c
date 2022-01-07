
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ipoib_dev_priv {scalar_t__ path_dentry; scalar_t__ mcg_dentry; } ;
struct ifnet {struct ipoib_dev_priv* if_softc; } ;


 int debugfs_remove (scalar_t__) ;

void ipoib_delete_debug_files(struct ifnet *dev)
{
 struct ipoib_dev_priv *priv = dev->if_softc;

 if (priv->mcg_dentry)
  debugfs_remove(priv->mcg_dentry);
 if (priv->path_dentry)
  debugfs_remove(priv->path_dentry);
}
