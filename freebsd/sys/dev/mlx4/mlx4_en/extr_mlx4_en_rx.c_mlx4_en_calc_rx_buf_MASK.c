#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct net_device {int if_mtu; } ;
struct mlx4_en_priv {int rx_mb_size; } ;

/* Variables and functions */
 int /*<<< orphan*/  DRV ; 
 int ETH_FCS_LEN ; 
 int /*<<< orphan*/  ETH_HLEN ; 
 int MCLBYTES ; 
 int MJUM16BYTES ; 
 int MJUM9BYTES ; 
 int MJUMPAGESIZE ; 
 int MLX4_NET_IP_ALIGN ; 
 int VLAN_HLEN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct mlx4_en_priv*,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct mlx4_en_priv*,char*,unsigned int) ; 
 struct mlx4_en_priv* FUNC2 (struct net_device*) ; 

void FUNC3(struct net_device *dev)
{
	struct mlx4_en_priv *priv = FUNC2(dev);
	int eff_mtu = dev->if_mtu + ETH_HLEN + VLAN_HLEN + ETH_FCS_LEN +
	    MLX4_NET_IP_ALIGN;

	if (eff_mtu > MJUM16BYTES) {
		FUNC1(priv, "MTU(%u) is too big\n", (unsigned)dev->if_mtu);
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

	FUNC0(DRV, priv, "Effective RX MTU: %d bytes\n", eff_mtu);
}