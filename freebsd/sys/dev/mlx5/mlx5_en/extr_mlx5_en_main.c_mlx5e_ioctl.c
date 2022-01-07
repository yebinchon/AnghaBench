
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint32_t ;
typedef int u_long ;
struct TYPE_4__ {int hw_lro_en; } ;
struct TYPE_3__ {int hw_lro; } ;
struct mlx5e_priv {scalar_t__ gone; int mdev; int clbr_done; int tstmp_clbr; TYPE_2__ params; TYPE_1__ params_ethtool; int state; int media; } ;
struct ifreq {int ifr_reqcap; int ifr_mtu; } ;
struct ifnet {int if_flags; int if_drv_flags; int if_capenable; int if_hwassist; struct mlx5e_priv* if_softc; } ;
struct ifi2creq {int len; int dev_addr; scalar_t__ data; int offset; } ;
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
 int IFCAP_HWRXTSTMP ;
 int IFCAP_LRO ;
 int IFCAP_NOMAP ;
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
 int MIN (int ,int) ;
 int MLX5E_MTU_MAX ;
 int MLX5E_MTU_MIN ;
 int MLX5E_STATE_OPENED ;
 int MLX5_EEPROM_LOW_PAGE ;
 int MLX5_EEPROM_MAX_BYTES ;
 int MLX5_I2C_ADDR_HIGH ;
 int MLX5_I2C_ADDR_LOW ;
 int MLX5_MODULE_STATUS_PLUGGED_ENABLED ;
 int MLX5_PORT_DOWN ;
 int MLX5_PORT_UP ;
 int PRIV_LOCK (struct mlx5e_priv*) ;
 int PRIV_UNLOCK (struct mlx5e_priv*) ;
 int VLAN_CAPABILITIES (struct ifnet*) ;
 int callout_drain (int *) ;
 int copyin (int ,struct ifi2creq*,int) ;
 int copyout (struct ifi2creq*,int ,int) ;
 int ether_ioctl (struct ifnet*,int,scalar_t__) ;
 int ifmedia_ioctl (struct ifnet*,struct ifreq*,int *,int) ;
 int ifr_data_get_ptr (struct ifreq*) ;
 int mlx5_en_err (struct ifnet*,char*,...) ;
 int mlx5_query_eeprom (int ,int ,int ,int ,int ,int,int *,int*) ;
 int mlx5_query_module_num (int ,int*) ;
 int mlx5_query_module_status (int ,int) ;
 int mlx5_query_port_max_mtu (int ,int*) ;
 int mlx5_set_port_status (int ,int ) ;
 int mlx5e_close_locked (struct ifnet*) ;
 int mlx5e_disable_vlan_filter (struct mlx5e_priv*) ;
 int mlx5e_enable_vlan_filter (struct mlx5e_priv*) ;
 int mlx5e_open_locked (struct ifnet*) ;
 int mlx5e_reset_calibration_callout (struct mlx5e_priv*) ;
 int mlx5e_set_dev_port_mtu (struct ifnet*,int ) ;
 int mlx5e_set_rx_mode (struct ifnet*) ;
 int mlx5e_update_carrier (struct mlx5e_priv*) ;
 int test_bit (int ,int *) ;

__attribute__((used)) static int
mlx5e_ioctl(struct ifnet *ifp, u_long command, caddr_t data)
{
 struct mlx5e_priv *priv;
 struct ifreq *ifr;
 struct ifi2creq i2c;
 int error = 0;
 int mask = 0;
 int size_read = 0;
 int module_status;
 int module_num;
 int max_mtu;
 uint8_t read_addr;

 priv = ifp->if_softc;


 if (priv == ((void*)0) || priv->gone != 0)
  return (ENXIO);

 switch (command) {
 case 128:
  ifr = (struct ifreq *)data;

  PRIV_LOCK(priv);
  mlx5_query_port_max_mtu(priv->mdev, &max_mtu);

  if (ifr->ifr_mtu >= MLX5E_MTU_MIN &&
      ifr->ifr_mtu <= MIN(MLX5E_MTU_MAX, max_mtu)) {
   int was_opened;

   was_opened = test_bit(MLX5E_STATE_OPENED, &priv->state);
   if (was_opened)
    mlx5e_close_locked(ifp);


   mlx5e_set_dev_port_mtu(ifp, ifr->ifr_mtu);

   if (was_opened)
    mlx5e_open_locked(ifp);
  } else {
   error = EINVAL;
   mlx5_en_err(ifp,
       "Invalid MTU value. Min val: %d, Max val: %d\n",
       MLX5E_MTU_MIN, MIN(MLX5E_MTU_MAX, max_mtu));
  }
  PRIV_UNLOCK(priv);
  break;
 case 130:
  if ((ifp->if_flags & IFF_UP) &&
      (ifp->if_drv_flags & IFF_DRV_RUNNING)) {
   mlx5e_set_rx_mode(ifp);
   break;
  }
  PRIV_LOCK(priv);
  if (ifp->if_flags & IFF_UP) {
   if ((ifp->if_drv_flags & IFF_DRV_RUNNING) == 0) {
    if (test_bit(MLX5E_STATE_OPENED, &priv->state) == 0)
     mlx5e_open_locked(ifp);
    ifp->if_drv_flags |= IFF_DRV_RUNNING;
    mlx5_set_port_status(priv->mdev, MLX5_PORT_UP);
   }
  } else {
   if (ifp->if_drv_flags & IFF_DRV_RUNNING) {
    mlx5_set_port_status(priv->mdev,
        MLX5_PORT_DOWN);
    if (test_bit(MLX5E_STATE_OPENED, &priv->state) != 0)
     mlx5e_close_locked(ifp);
    mlx5e_update_carrier(priv);
    ifp->if_drv_flags &= ~IFF_DRV_RUNNING;
   }
  }
  PRIV_UNLOCK(priv);
  break;
 case 136:
 case 135:
  mlx5e_set_rx_mode(ifp);
  break;
 case 129:
 case 133:
 case 132:
  ifr = (struct ifreq *)data;
  error = ifmedia_ioctl(ifp, ifr, &priv->media, command);
  break;
 case 131:
  ifr = (struct ifreq *)data;
  PRIV_LOCK(priv);
  mask = ifr->ifr_reqcap ^ ifp->if_capenable;

  if (mask & IFCAP_TXCSUM) {
   ifp->if_capenable ^= IFCAP_TXCSUM;
   ifp->if_hwassist ^= (CSUM_TCP | CSUM_UDP | CSUM_IP);

   if (IFCAP_TSO4 & ifp->if_capenable &&
       !(IFCAP_TXCSUM & ifp->if_capenable)) {
    ifp->if_capenable &= ~IFCAP_TSO4;
    ifp->if_hwassist &= ~CSUM_IP_TSO;
    mlx5_en_err(ifp,
        "tso4 disabled due to -txcsum.\n");
   }
  }
  if (mask & IFCAP_TXCSUM_IPV6) {
   ifp->if_capenable ^= IFCAP_TXCSUM_IPV6;
   ifp->if_hwassist ^= (CSUM_UDP_IPV6 | CSUM_TCP_IPV6);

   if (IFCAP_TSO6 & ifp->if_capenable &&
       !(IFCAP_TXCSUM_IPV6 & ifp->if_capenable)) {
    ifp->if_capenable &= ~IFCAP_TSO6;
    ifp->if_hwassist &= ~CSUM_IP6_TSO;
    mlx5_en_err(ifp,
        "tso6 disabled due to -txcsum6.\n");
   }
  }
  if (mask & IFCAP_NOMAP)
   ifp->if_capenable ^= IFCAP_NOMAP;
  if (mask & IFCAP_RXCSUM)
   ifp->if_capenable ^= IFCAP_RXCSUM;
  if (mask & IFCAP_RXCSUM_IPV6)
   ifp->if_capenable ^= IFCAP_RXCSUM_IPV6;
  if (mask & IFCAP_TSO4) {
   if (!(IFCAP_TSO4 & ifp->if_capenable) &&
       !(IFCAP_TXCSUM & ifp->if_capenable)) {
    mlx5_en_err(ifp, "enable txcsum first.\n");
    error = EAGAIN;
    goto out;
   }
   ifp->if_capenable ^= IFCAP_TSO4;
   ifp->if_hwassist ^= CSUM_IP_TSO;
  }
  if (mask & IFCAP_TSO6) {
   if (!(IFCAP_TSO6 & ifp->if_capenable) &&
       !(IFCAP_TXCSUM_IPV6 & ifp->if_capenable)) {
    mlx5_en_err(ifp, "enable txcsum6 first.\n");
    error = EAGAIN;
    goto out;
   }
   ifp->if_capenable ^= IFCAP_TSO6;
   ifp->if_hwassist ^= CSUM_IP6_TSO;
  }
  if (mask & IFCAP_VLAN_HWFILTER) {
   if (ifp->if_capenable & IFCAP_VLAN_HWFILTER)
    mlx5e_disable_vlan_filter(priv);
   else
    mlx5e_enable_vlan_filter(priv);

   ifp->if_capenable ^= IFCAP_VLAN_HWFILTER;
  }
  if (mask & IFCAP_VLAN_HWTAGGING)
   ifp->if_capenable ^= IFCAP_VLAN_HWTAGGING;
  if (mask & IFCAP_WOL_MAGIC)
   ifp->if_capenable ^= IFCAP_WOL_MAGIC;

  VLAN_CAPABILITIES(ifp);

  if (mask & IFCAP_LRO) {
   int was_opened = test_bit(MLX5E_STATE_OPENED, &priv->state);
   bool need_restart = 0;

   ifp->if_capenable ^= IFCAP_LRO;


   if (!(ifp->if_capenable & IFCAP_LRO)) {
    if (priv->params.hw_lro_en) {
     priv->params.hw_lro_en = 0;
     need_restart = 1;
    }
   } else {
    if (priv->params.hw_lro_en == 0 &&
        priv->params_ethtool.hw_lro != 0) {
     priv->params.hw_lro_en = 1;
     need_restart = 1;
    }
   }
   if (was_opened && need_restart) {
    mlx5e_close_locked(ifp);
    mlx5e_open_locked(ifp);
   }
  }
  if (mask & IFCAP_HWRXTSTMP) {
   ifp->if_capenable ^= IFCAP_HWRXTSTMP;
   if (ifp->if_capenable & IFCAP_HWRXTSTMP) {
    if (priv->clbr_done == 0)
     mlx5e_reset_calibration_callout(priv);
   } else {
    callout_drain(&priv->tstmp_clbr);
    priv->clbr_done = 0;
   }
  }
out:
  PRIV_UNLOCK(priv);
  break;

 case 134:
  ifr = (struct ifreq *)data;





  error = copyin(ifr_data_get_ptr(ifr), &i2c, sizeof(i2c));
  if (error)
   break;

  if (i2c.len > sizeof(i2c.data)) {
   error = EINVAL;
   break;
  }

  PRIV_LOCK(priv);

  error = mlx5_query_module_num(priv->mdev, &module_num);
  if (error) {
   mlx5_en_err(ifp,
       "Query module num failed, eeprom reading is not supported\n");
   error = EINVAL;
   goto err_i2c;
  }

  module_status = mlx5_query_module_status(priv->mdev, module_num);
  if (module_status != MLX5_MODULE_STATUS_PLUGGED_ENABLED) {
   error = EINVAL;
   goto err_i2c;
  }




  if (i2c.dev_addr == 0xA0)
   read_addr = MLX5_I2C_ADDR_LOW;
  else if (i2c.dev_addr == 0xA2)
   read_addr = MLX5_I2C_ADDR_HIGH;
  else {
   mlx5_en_err(ifp,
       "Query eeprom failed, Invalid Address: %X\n",
       i2c.dev_addr);
   error = EINVAL;
   goto err_i2c;
  }
  error = mlx5_query_eeprom(priv->mdev,
      read_addr, MLX5_EEPROM_LOW_PAGE,
      (uint32_t)i2c.offset, (uint32_t)i2c.len, module_num,
      (uint32_t *)i2c.data, &size_read);
  if (error) {
   mlx5_en_err(ifp,
       "Query eeprom failed, eeprom reading is not supported\n");
   error = EINVAL;
   goto err_i2c;
  }

  if (i2c.len > MLX5_EEPROM_MAX_BYTES) {
   error = mlx5_query_eeprom(priv->mdev,
       read_addr, MLX5_EEPROM_LOW_PAGE,
       (uint32_t)(i2c.offset + size_read),
       (uint32_t)(i2c.len - size_read), module_num,
       (uint32_t *)(i2c.data + size_read), &size_read);
  }
  if (error) {
   mlx5_en_err(ifp,
       "Query eeprom failed, eeprom reading is not supported\n");
   error = EINVAL;
   goto err_i2c;
  }

  error = copyout(&i2c, ifr_data_get_ptr(ifr), sizeof(i2c));
err_i2c:
  PRIV_UNLOCK(priv);
  break;

 default:
  error = ether_ioctl(ifp, command, data);
  break;
 }
 return (error);
}
