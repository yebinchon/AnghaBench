
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_long ;
typedef int u8 ;
typedef int u32 ;
struct mlx4_en_priv {scalar_t__ gone; int port; int media; struct mlx4_en_dev* mdev; } ;
struct mlx4_en_dev {int state_lock; int dev; } ;
struct ifrsskey {int ifrk_keylen; int ifrk_key; void* ifrk_func; } ;
struct ifrsshash {int ifrh_types; void* ifrh_func; } ;
struct ifreq {int ifr_reqcap; int ifr_mtu; } ;
struct ifnet {int if_flags; int if_drv_flags; int if_capenable; int if_hwassist; struct mlx4_en_priv* if_softc; } ;
struct ifi2creq {int len; int data; int offset; } ;
typedef int i2c ;
typedef scalar_t__ caddr_t ;


 int CSUM_IP ;
 int CSUM_IP6_TSO ;
 int CSUM_IP_TSO ;
 int CSUM_TCP ;
 int CSUM_TCP_IPV6 ;
 int CSUM_UDP ;
 int CSUM_UDP_IPV6 ;
 int EAGAIN ;
 int EINVAL ;
 int ENXIO ;
 int IFCAP_LRO ;
 int IFCAP_RXCSUM ;
 int IFCAP_RXCSUM_IPV6 ;
 int IFCAP_TSO4 ;
 int IFCAP_TSO6 ;
 int IFCAP_TXCSUM ;
 int IFCAP_TXCSUM_IPV6 ;
 int IFCAP_VLAN_HWFILTER ;
 int IFCAP_VLAN_HWTAGGING ;
 int IFCAP_WOL_MAGIC ;
 int IFF_DRV_RUNNING ;
 int IFF_UP ;
 int LINK_STATE_DOWN ;
 int MLX4_RSS_IPV4 ;
 int MLX4_RSS_IPV6 ;
 int MLX4_RSS_TCP_IPV4 ;
 int MLX4_RSS_TCP_IPV6 ;
 int MLX4_RSS_UDP_IPV4 ;
 int MLX4_RSS_UDP_IPV6 ;
 void* RSS_FUNC_TOEPLITZ ;
 int RSS_KEYLEN ;
 int RSS_TYPE_IPV4 ;
 int RSS_TYPE_IPV6 ;
 int RSS_TYPE_TCP_IPV4 ;
 int RSS_TYPE_TCP_IPV6 ;
 int RSS_TYPE_UDP_IPV4 ;
 int RSS_TYPE_UDP_IPV6 ;
 int VLAN_CAPABILITIES (struct ifnet*) ;
 int copyin (int ,struct ifi2creq*,int) ;
 int copyout (struct ifi2creq*,int ,int) ;
 int ether_ioctl (struct ifnet*,int,scalar_t__) ;
 int if_link_state_change (struct ifnet*,int ) ;
 int if_printf (struct ifnet*,char*) ;
 int ifmedia_ioctl (struct ifnet*,struct ifreq*,int *,int) ;
 int ifr_data_get_ptr (struct ifreq*) ;
 int memcpy (int ,int const*,int ) ;
 int mlx4_en_change_mtu (struct ifnet*,int ) ;
 int * mlx4_en_get_rss_key (struct mlx4_en_priv*,int *) ;
 int mlx4_en_get_rss_mask (struct mlx4_en_priv*) ;
 int mlx4_en_set_rx_mode (struct ifnet*) ;
 int mlx4_en_start_port (struct ifnet*) ;
 int mlx4_en_stop_port (struct ifnet*) ;
 int mlx4_get_module_info (int ,int ,int ,int,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static int mlx4_en_ioctl(struct ifnet *dev, u_long command, caddr_t data)
{
 struct mlx4_en_priv *priv;
 struct mlx4_en_dev *mdev;
 struct ifreq *ifr;
 int error;
 int mask;
 struct ifrsskey *ifrk;
 const u32 *key;
 struct ifrsshash *ifrh;
 u8 rss_mask;

 error = 0;
 mask = 0;
 priv = dev->if_softc;


 if (priv == ((void*)0) || priv->gone != 0)
  return (ENXIO);

 mdev = priv->mdev;
 ifr = (struct ifreq *) data;

 switch (command) {
 case 128:
  error = -mlx4_en_change_mtu(dev, ifr->ifr_mtu);
  break;
 case 130:
  if (dev->if_flags & IFF_UP) {
   if ((dev->if_drv_flags & IFF_DRV_RUNNING) == 0) {
    mutex_lock(&mdev->state_lock);
    mlx4_en_start_port(dev);
    mutex_unlock(&mdev->state_lock);
   } else {
    mlx4_en_set_rx_mode(dev);
   }
  } else {
   mutex_lock(&mdev->state_lock);
   if (dev->if_drv_flags & IFF_DRV_RUNNING) {
    mlx4_en_stop_port(dev);
    if_link_state_change(dev, LINK_STATE_DOWN);
   }
   mutex_unlock(&mdev->state_lock);
  }
  break;
 case 137:
 case 136:
  mlx4_en_set_rx_mode(dev);
  break;
 case 129:
 case 134:
  error = ifmedia_ioctl(dev, ifr, &priv->media, command);
  break;
 case 131:
  mutex_lock(&mdev->state_lock);
  mask = ifr->ifr_reqcap ^ dev->if_capenable;
  if (mask & IFCAP_TXCSUM) {
   dev->if_capenable ^= IFCAP_TXCSUM;
   dev->if_hwassist ^= (CSUM_TCP | CSUM_UDP | CSUM_IP);

   if (IFCAP_TSO4 & dev->if_capenable &&
       !(IFCAP_TXCSUM & dev->if_capenable)) {
    dev->if_capenable &= ~IFCAP_TSO4;
    dev->if_hwassist &= ~CSUM_IP_TSO;
    if_printf(dev,
        "tso4 disabled due to -txcsum.\n");
   }
  }
  if (mask & IFCAP_TXCSUM_IPV6) {
   dev->if_capenable ^= IFCAP_TXCSUM_IPV6;
   dev->if_hwassist ^= (CSUM_UDP_IPV6 | CSUM_TCP_IPV6);

   if (IFCAP_TSO6 & dev->if_capenable &&
       !(IFCAP_TXCSUM_IPV6 & dev->if_capenable)) {
    dev->if_capenable &= ~IFCAP_TSO6;
    dev->if_hwassist &= ~CSUM_IP6_TSO;
    if_printf(dev,
        "tso6 disabled due to -txcsum6.\n");
   }
  }
  if (mask & IFCAP_RXCSUM)
   dev->if_capenable ^= IFCAP_RXCSUM;
  if (mask & IFCAP_RXCSUM_IPV6)
   dev->if_capenable ^= IFCAP_RXCSUM_IPV6;

  if (mask & IFCAP_TSO4) {
   if (!(IFCAP_TSO4 & dev->if_capenable) &&
       !(IFCAP_TXCSUM & dev->if_capenable)) {
    if_printf(dev, "enable txcsum first.\n");
    error = EAGAIN;
    goto out;
   }
   dev->if_capenable ^= IFCAP_TSO4;
   dev->if_hwassist ^= CSUM_IP_TSO;
  }
  if (mask & IFCAP_TSO6) {
   if (!(IFCAP_TSO6 & dev->if_capenable) &&
       !(IFCAP_TXCSUM_IPV6 & dev->if_capenable)) {
    if_printf(dev, "enable txcsum6 first.\n");
    error = EAGAIN;
    goto out;
   }
   dev->if_capenable ^= IFCAP_TSO6;
   dev->if_hwassist ^= CSUM_IP6_TSO;
  }
  if (mask & IFCAP_LRO)
   dev->if_capenable ^= IFCAP_LRO;
  if (mask & IFCAP_VLAN_HWTAGGING)
   dev->if_capenable ^= IFCAP_VLAN_HWTAGGING;
  if (mask & IFCAP_VLAN_HWFILTER)
   dev->if_capenable ^= IFCAP_VLAN_HWFILTER;
  if (mask & IFCAP_WOL_MAGIC)
   dev->if_capenable ^= IFCAP_WOL_MAGIC;
  if (dev->if_drv_flags & IFF_DRV_RUNNING)
   mlx4_en_start_port(dev);
out:
  mutex_unlock(&mdev->state_lock);
  VLAN_CAPABILITIES(dev);
  break;
 case 132:
  ifrk = (struct ifrsskey *)data;
  ifrk->ifrk_func = RSS_FUNC_TOEPLITZ;
  mutex_lock(&mdev->state_lock);
  key = mlx4_en_get_rss_key(priv, &ifrk->ifrk_keylen);
  if (ifrk->ifrk_keylen > RSS_KEYLEN)
   error = EINVAL;
  else
   memcpy(ifrk->ifrk_key, key, ifrk->ifrk_keylen);
  mutex_unlock(&mdev->state_lock);
  break;

 case 133:
  mutex_lock(&mdev->state_lock);
  rss_mask = mlx4_en_get_rss_mask(priv);
  mutex_unlock(&mdev->state_lock);
  ifrh = (struct ifrsshash *)data;
  ifrh->ifrh_func = RSS_FUNC_TOEPLITZ;
  ifrh->ifrh_types = 0;
  if (rss_mask & MLX4_RSS_IPV4)
   ifrh->ifrh_types |= RSS_TYPE_IPV4;
  if (rss_mask & MLX4_RSS_TCP_IPV4)
   ifrh->ifrh_types |= RSS_TYPE_TCP_IPV4;
  if (rss_mask & MLX4_RSS_IPV6)
   ifrh->ifrh_types |= RSS_TYPE_IPV6;
  if (rss_mask & MLX4_RSS_TCP_IPV6)
   ifrh->ifrh_types |= RSS_TYPE_TCP_IPV6;
  if (rss_mask & MLX4_RSS_UDP_IPV4)
   ifrh->ifrh_types |= RSS_TYPE_UDP_IPV4;
  if (rss_mask & MLX4_RSS_UDP_IPV6)
   ifrh->ifrh_types |= RSS_TYPE_UDP_IPV6;
  break;

 default:
  error = ether_ioctl(dev, command, data);
  break;
 }

 return (error);
}
