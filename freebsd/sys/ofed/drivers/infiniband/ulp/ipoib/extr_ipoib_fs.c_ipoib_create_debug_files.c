
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ipoib_dev_priv {void* path_dentry; void* mcg_dentry; } ;
struct ifnet {struct ipoib_dev_priv* if_softc; } ;


 int IFNAMSIZ ;
 int S_IFREG ;
 int S_IRUGO ;
 void* debugfs_create_file (char*,int,int ,struct ifnet*,int *) ;
 char* if_name (struct ifnet*) ;
 int ipoib_mcg_fops ;
 int ipoib_path_fops ;
 int ipoib_root ;
 int ipoib_warn (struct ipoib_dev_priv*,char*) ;
 int snprintf (char*,int,char*,char*) ;

void ipoib_create_debug_files(struct ifnet *dev)
{
 struct ipoib_dev_priv *priv = dev->if_softc;
 char name[IFNAMSIZ + sizeof "_path"];

 snprintf(name, sizeof name, "%s_mcg", if_name(dev));
 priv->mcg_dentry = debugfs_create_file(name, S_IFREG | S_IRUGO,
            ipoib_root, dev, &ipoib_mcg_fops);
 if (!priv->mcg_dentry)
  ipoib_warn(priv, "failed to create mcg debug file\n");

 snprintf(name, sizeof name, "%s_path", if_name(dev));
 priv->path_dentry = debugfs_create_file(name, S_IFREG | S_IRUGO,
      ipoib_root, dev, &ipoib_path_fops);
 if (!priv->path_dentry)
  ipoib_warn(priv, "failed to create path debug file\n");
}
