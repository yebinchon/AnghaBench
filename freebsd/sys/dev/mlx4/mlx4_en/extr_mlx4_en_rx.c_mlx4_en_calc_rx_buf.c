
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int if_mtu; } ;
struct mlx4_en_priv {int rx_mb_size; } ;


 int DRV ;
 int ETH_FCS_LEN ;
 int ETH_HLEN ;
 int MCLBYTES ;
 int MJUM16BYTES ;
 int MJUM9BYTES ;
 int MJUMPAGESIZE ;
 int MLX4_NET_IP_ALIGN ;
 int VLAN_HLEN ;
 int en_dbg (int ,struct mlx4_en_priv*,char*,int) ;
 int en_err (struct mlx4_en_priv*,char*,unsigned int) ;
 struct mlx4_en_priv* netdev_priv (struct net_device*) ;

void mlx4_en_calc_rx_buf(struct net_device *dev)
{
 struct mlx4_en_priv *priv = netdev_priv(dev);
 int eff_mtu = dev->if_mtu + ETH_HLEN + VLAN_HLEN + ETH_FCS_LEN +
     MLX4_NET_IP_ALIGN;

 if (eff_mtu > MJUM16BYTES) {
  en_err(priv, "MTU(%u) is too big\n", (unsigned)dev->if_mtu);
                eff_mtu = MJUM16BYTES;
        } else if (eff_mtu > MJUM9BYTES) {
                eff_mtu = MJUM16BYTES;
        } else if (eff_mtu > MJUMPAGESIZE) {
                eff_mtu = MJUM9BYTES;
        } else if (eff_mtu > MCLBYTES) {
                eff_mtu = MJUMPAGESIZE;
        } else {
                eff_mtu = MCLBYTES;
        }

 priv->rx_mb_size = eff_mtu;

 en_dbg(DRV, priv, "Effective RX MTU: %d bytes\n", eff_mtu);
}
