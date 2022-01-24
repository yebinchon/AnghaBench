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
typedef  int u_long ;
typedef  int u8 ;
typedef  int /*<<< orphan*/  u32 ;
struct mlx4_en_priv {scalar_t__ gone; int /*<<< orphan*/  port; int /*<<< orphan*/  media; struct mlx4_en_dev* mdev; } ;
struct mlx4_en_dev {int /*<<< orphan*/  state_lock; int /*<<< orphan*/  dev; } ;
struct ifrsskey {int /*<<< orphan*/  ifrk_keylen; int /*<<< orphan*/  ifrk_key; void* ifrk_func; } ;
struct ifrsshash {int /*<<< orphan*/  ifrh_types; void* ifrh_func; } ;
struct ifreq {int ifr_reqcap; int /*<<< orphan*/  ifr_mtu; } ;
struct ifnet {int if_flags; int if_drv_flags; int if_capenable; int if_hwassist; struct mlx4_en_priv* if_softc; } ;
struct ifi2creq {int len; int /*<<< orphan*/  data; int /*<<< orphan*/  offset; } ;
typedef  int /*<<< orphan*/  i2c ;
typedef  scalar_t__ caddr_t ;

/* Variables and functions */
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
 int /*<<< orphan*/  LINK_STATE_DOWN ; 
 int MLX4_RSS_IPV4 ; 
 int MLX4_RSS_IPV6 ; 
 int MLX4_RSS_TCP_IPV4 ; 
 int MLX4_RSS_TCP_IPV6 ; 
 int MLX4_RSS_UDP_IPV4 ; 
 int MLX4_RSS_UDP_IPV6 ; 
 void* RSS_FUNC_TOEPLITZ ; 
 int /*<<< orphan*/  RSS_KEYLEN ; 
 int /*<<< orphan*/  RSS_TYPE_IPV4 ; 
 int /*<<< orphan*/  RSS_TYPE_IPV6 ; 
 int /*<<< orphan*/  RSS_TYPE_TCP_IPV4 ; 
 int /*<<< orphan*/  RSS_TYPE_TCP_IPV6 ; 
 int /*<<< orphan*/  RSS_TYPE_UDP_IPV4 ; 
 int /*<<< orphan*/  RSS_TYPE_UDP_IPV6 ; 
#define  SIOCADDMULTI 137 
#define  SIOCDELMULTI 136 
#define  SIOCGI2C 135 
#define  SIOCGIFMEDIA 134 
#define  SIOCGIFRSSHASH 133 
#define  SIOCGIFRSSKEY 132 
#define  SIOCSIFCAP 131 
#define  SIOCSIFFLAGS 130 
#define  SIOCSIFMEDIA 129 
#define  SIOCSIFMTU 128 
 int /*<<< orphan*/  FUNC0 (struct ifnet*) ; 
 int FUNC1 (int /*<<< orphan*/ ,struct ifi2creq*,int) ; 
 int FUNC2 (struct ifi2creq*,int /*<<< orphan*/ ,int) ; 
 int FUNC3 (struct ifnet*,int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (struct ifnet*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct ifnet*,char*) ; 
 int FUNC6 (struct ifnet*,struct ifreq*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC7 (struct ifreq*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/  const*,int /*<<< orphan*/ ) ; 
 int FUNC9 (struct ifnet*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC10 (struct mlx4_en_priv*,int /*<<< orphan*/ *) ; 
 int FUNC11 (struct mlx4_en_priv*) ; 
 int /*<<< orphan*/  FUNC12 (struct ifnet*) ; 
 int /*<<< orphan*/  FUNC13 (struct ifnet*) ; 
 int /*<<< orphan*/  FUNC14 (struct ifnet*) ; 
 int FUNC15 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC18(struct ifnet *dev, u_long command, caddr_t data)
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

	/* check if detaching */
	if (priv == NULL || priv->gone != 0)
		return (ENXIO);

	mdev = priv->mdev;
	ifr = (struct ifreq *) data;

	switch (command) {
	case SIOCSIFMTU:
		error = -FUNC9(dev, ifr->ifr_mtu);
		break;
	case SIOCSIFFLAGS:
		if (dev->if_flags & IFF_UP) {
			if ((dev->if_drv_flags & IFF_DRV_RUNNING) == 0) {
				FUNC16(&mdev->state_lock);
				FUNC13(dev);
				FUNC17(&mdev->state_lock);
			} else {
				FUNC12(dev);
			}
		} else {
			FUNC16(&mdev->state_lock);
			if (dev->if_drv_flags & IFF_DRV_RUNNING) {
				FUNC14(dev);
				FUNC4(dev, LINK_STATE_DOWN);
			}
			FUNC17(&mdev->state_lock);
		}
		break;
	case SIOCADDMULTI:
	case SIOCDELMULTI:
		FUNC12(dev);
		break;
	case SIOCSIFMEDIA:
	case SIOCGIFMEDIA:
		error = FUNC6(dev, ifr, &priv->media, command);
		break;
	case SIOCSIFCAP:
		FUNC16(&mdev->state_lock);
		mask = ifr->ifr_reqcap ^ dev->if_capenable;
		if (mask & IFCAP_TXCSUM) {
			dev->if_capenable ^= IFCAP_TXCSUM;
			dev->if_hwassist ^= (CSUM_TCP | CSUM_UDP | CSUM_IP);

			if (IFCAP_TSO4 & dev->if_capenable &&
			    !(IFCAP_TXCSUM & dev->if_capenable)) {
				dev->if_capenable &= ~IFCAP_TSO4;
				dev->if_hwassist &= ~CSUM_IP_TSO;
				FUNC5(dev,
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
				FUNC5(dev,
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
				FUNC5(dev, "enable txcsum first.\n");
				error = EAGAIN;
				goto out;
			}
			dev->if_capenable ^= IFCAP_TSO4;
			dev->if_hwassist ^= CSUM_IP_TSO;
		}
		if (mask & IFCAP_TSO6) {
			if (!(IFCAP_TSO6 & dev->if_capenable) &&
			    !(IFCAP_TXCSUM_IPV6 & dev->if_capenable)) {
				FUNC5(dev, "enable txcsum6 first.\n");
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
			FUNC13(dev);
out:
		FUNC17(&mdev->state_lock);
		FUNC0(dev);
		break;
#if __FreeBSD_version >= 1100036
	case SIOCGI2C: {
		struct ifi2creq i2c;

		error = copyin(ifr_data_get_ptr(ifr), &i2c, sizeof(i2c));
		if (error)
			break;
		if (i2c.len > sizeof(i2c.data)) {
			error = EINVAL;
			break;
		}
		/*
		 * Note that we ignore i2c.addr here. The driver hardcodes
		 * the address to 0x50, while standard expects it to be 0xA0.
		 */
		error = mlx4_get_module_info(mdev->dev, priv->port,
		    i2c.offset, i2c.len, i2c.data);
		if (error < 0) {
			error = -error;
			break;
		}
		error = copyout(&i2c, ifr_data_get_ptr(ifr), sizeof(i2c));
		break;
	}
#endif
	case SIOCGIFRSSKEY:
		ifrk = (struct ifrsskey *)data;
		ifrk->ifrk_func = RSS_FUNC_TOEPLITZ;
		FUNC16(&mdev->state_lock);
		key = FUNC10(priv, &ifrk->ifrk_keylen);
		if (ifrk->ifrk_keylen > RSS_KEYLEN)
			error = EINVAL;
		else
			FUNC8(ifrk->ifrk_key, key, ifrk->ifrk_keylen);
		FUNC17(&mdev->state_lock);
		break;

	case SIOCGIFRSSHASH:
		FUNC16(&mdev->state_lock);
		rss_mask = FUNC11(priv);
		FUNC17(&mdev->state_lock);
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
		error = FUNC3(dev, command, data);
		break;
	}

	return (error);
}