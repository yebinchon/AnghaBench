
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct net_device {int dummy; } ;
struct mlx4_en_priv {int port; struct mlx4_en_dev* mdev; } ;
struct mlx4_en_dev {int dev; } ;
struct ethtool_modinfo {void* eeprom_len; void* type; } ;


 int EINVAL ;
 int EIO ;
 void* ETH_MODULE_SFF_8436 ;
 void* ETH_MODULE_SFF_8436_LEN ;
 void* ETH_MODULE_SFF_8472 ;
 void* ETH_MODULE_SFF_8472_LEN ;
 void* ETH_MODULE_SFF_8636 ;
 void* ETH_MODULE_SFF_8636_LEN ;




 int en_err (struct mlx4_en_priv*,char*,...) ;
 int mlx4_get_module_info (int ,int ,int ,int,int*) ;
 struct mlx4_en_priv* netdev_priv (struct net_device*) ;

__attribute__((used)) static int mlx4_en_get_module_info(struct net_device *dev,
       struct ethtool_modinfo *modinfo)
{
 struct mlx4_en_priv *priv = netdev_priv(dev);
 struct mlx4_en_dev *mdev = priv->mdev;
 int ret;
 u8 data[4];


 ret = mlx4_get_module_info(mdev->dev, priv->port,
       0 , 2 , data);

 if (ret < 2) {
  en_err(priv, "Failed to read eeprom module first two bytes, error: 0x%x\n", -ret);
  return -EIO;
 }

 switch (data[0] ) {
 case 131:
  modinfo->type = ETH_MODULE_SFF_8436;
  modinfo->eeprom_len = ETH_MODULE_SFF_8436_LEN;
  break;
 case 129:
  if (data[1] >= 0x3) {
   modinfo->type = ETH_MODULE_SFF_8636;
   modinfo->eeprom_len = ETH_MODULE_SFF_8636_LEN;
  } else {
   modinfo->type = ETH_MODULE_SFF_8436;
   modinfo->eeprom_len = ETH_MODULE_SFF_8436_LEN;
  }
  break;
 case 130:
  modinfo->type = ETH_MODULE_SFF_8636;
  modinfo->eeprom_len = ETH_MODULE_SFF_8636_LEN;
  break;
 case 128:
  modinfo->type = ETH_MODULE_SFF_8472;
  modinfo->eeprom_len = ETH_MODULE_SFF_8472_LEN;
  break;
 default:
  en_err(priv, "mlx4_en_get_module_info :  Not recognized cable type\n");
  return -EINVAL;
 }

 return 0;
}
