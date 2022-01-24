#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int /*<<< orphan*/  uint32_t ;
typedef  int u_long ;
struct TYPE_4__ {int hw_lro_en; } ;
struct TYPE_3__ {int /*<<< orphan*/  hw_lro; } ;
struct mlx5e_priv {scalar_t__ gone; int /*<<< orphan*/  mdev; int /*<<< orphan*/  clbr_done; int /*<<< orphan*/  tstmp_clbr; TYPE_2__ params; TYPE_1__ params_ethtool; int /*<<< orphan*/  state; int /*<<< orphan*/  media; } ;
struct ifreq {int ifr_reqcap; int /*<<< orphan*/  ifr_mtu; } ;
struct ifnet {int if_flags; int if_drv_flags; int if_capenable; int if_hwassist; struct mlx5e_priv* if_softc; } ;
struct ifi2creq {int len; int dev_addr; scalar_t__ data; int /*<<< orphan*/  offset; } ;
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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  MLX5E_MTU_MAX ; 
 int /*<<< orphan*/  MLX5E_MTU_MIN ; 
 int /*<<< orphan*/  MLX5E_STATE_OPENED ; 
 int /*<<< orphan*/  MLX5_EEPROM_LOW_PAGE ; 
 int MLX5_EEPROM_MAX_BYTES ; 
 int /*<<< orphan*/  MLX5_I2C_ADDR_HIGH ; 
 int /*<<< orphan*/  MLX5_I2C_ADDR_LOW ; 
 int MLX5_MODULE_STATUS_PLUGGED_ENABLED ; 
 int /*<<< orphan*/  MLX5_PORT_DOWN ; 
 int /*<<< orphan*/  MLX5_PORT_UP ; 
 int /*<<< orphan*/  FUNC1 (struct mlx5e_priv*) ; 
 int /*<<< orphan*/  FUNC2 (struct mlx5e_priv*) ; 
#define  SIOCADDMULTI 136 
#define  SIOCDELMULTI 135 
#define  SIOCGI2C 134 
#define  SIOCGIFMEDIA 133 
#define  SIOCGIFXMEDIA 132 
#define  SIOCSIFCAP 131 
#define  SIOCSIFFLAGS 130 
#define  SIOCSIFMEDIA 129 
#define  SIOCSIFMTU 128 
 int /*<<< orphan*/  FUNC3 (struct ifnet*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int FUNC5 (int /*<<< orphan*/ ,struct ifi2creq*,int) ; 
 int FUNC6 (struct ifi2creq*,int /*<<< orphan*/ ,int) ; 
 int FUNC7 (struct ifnet*,int,scalar_t__) ; 
 int FUNC8 (struct ifnet*,struct ifreq*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC9 (struct ifreq*) ; 
 int /*<<< orphan*/  FUNC10 (struct ifnet*,char*,...) ; 
 int FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,int*) ; 
 int FUNC12 (int /*<<< orphan*/ ,int*) ; 
 int FUNC13 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (struct ifnet*) ; 
 int /*<<< orphan*/  FUNC17 (struct mlx5e_priv*) ; 
 int /*<<< orphan*/  FUNC18 (struct mlx5e_priv*) ; 
 int /*<<< orphan*/  FUNC19 (struct ifnet*) ; 
 int /*<<< orphan*/  FUNC20 (struct mlx5e_priv*) ; 
 int /*<<< orphan*/  FUNC21 (struct ifnet*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC22 (struct ifnet*) ; 
 int /*<<< orphan*/  FUNC23 (struct mlx5e_priv*) ; 
 int FUNC24 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC25(struct ifnet *ifp, u_long command, caddr_t data)
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

	/* check if detaching */
	if (priv == NULL || priv->gone != 0)
		return (ENXIO);

	switch (command) {
	case SIOCSIFMTU:
		ifr = (struct ifreq *)data;

		FUNC1(priv);
		FUNC14(priv->mdev, &max_mtu);

		if (ifr->ifr_mtu >= MLX5E_MTU_MIN &&
		    ifr->ifr_mtu <= FUNC0(MLX5E_MTU_MAX, max_mtu)) {
			int was_opened;

			was_opened = FUNC24(MLX5E_STATE_OPENED, &priv->state);
			if (was_opened)
				FUNC16(ifp);

			/* set new MTU */
			FUNC21(ifp, ifr->ifr_mtu);

			if (was_opened)
				FUNC19(ifp);
		} else {
			error = EINVAL;
			FUNC10(ifp,
			    "Invalid MTU value. Min val: %d, Max val: %d\n",
			    MLX5E_MTU_MIN, FUNC0(MLX5E_MTU_MAX, max_mtu));
		}
		FUNC2(priv);
		break;
	case SIOCSIFFLAGS:
		if ((ifp->if_flags & IFF_UP) &&
		    (ifp->if_drv_flags & IFF_DRV_RUNNING)) {
			FUNC22(ifp);
			break;
		}
		FUNC1(priv);
		if (ifp->if_flags & IFF_UP) {
			if ((ifp->if_drv_flags & IFF_DRV_RUNNING) == 0) {
				if (FUNC24(MLX5E_STATE_OPENED, &priv->state) == 0)
					FUNC19(ifp);
				ifp->if_drv_flags |= IFF_DRV_RUNNING;
				FUNC15(priv->mdev, MLX5_PORT_UP);
			}
		} else {
			if (ifp->if_drv_flags & IFF_DRV_RUNNING) {
				FUNC15(priv->mdev,
				    MLX5_PORT_DOWN);
				if (FUNC24(MLX5E_STATE_OPENED, &priv->state) != 0)
					FUNC16(ifp);
				FUNC23(priv);
				ifp->if_drv_flags &= ~IFF_DRV_RUNNING;
			}
		}
		FUNC2(priv);
		break;
	case SIOCADDMULTI:
	case SIOCDELMULTI:
		FUNC22(ifp);
		break;
	case SIOCSIFMEDIA:
	case SIOCGIFMEDIA:
	case SIOCGIFXMEDIA:
		ifr = (struct ifreq *)data;
		error = FUNC8(ifp, ifr, &priv->media, command);
		break;
	case SIOCSIFCAP:
		ifr = (struct ifreq *)data;
		FUNC1(priv);
		mask = ifr->ifr_reqcap ^ ifp->if_capenable;

		if (mask & IFCAP_TXCSUM) {
			ifp->if_capenable ^= IFCAP_TXCSUM;
			ifp->if_hwassist ^= (CSUM_TCP | CSUM_UDP | CSUM_IP);

			if (IFCAP_TSO4 & ifp->if_capenable &&
			    !(IFCAP_TXCSUM & ifp->if_capenable)) {
				ifp->if_capenable &= ~IFCAP_TSO4;
				ifp->if_hwassist &= ~CSUM_IP_TSO;
				FUNC10(ifp,
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
				FUNC10(ifp,
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
				FUNC10(ifp, "enable txcsum first.\n");
				error = EAGAIN;
				goto out;
			}
			ifp->if_capenable ^= IFCAP_TSO4;
			ifp->if_hwassist ^= CSUM_IP_TSO;
		}
		if (mask & IFCAP_TSO6) {
			if (!(IFCAP_TSO6 & ifp->if_capenable) &&
			    !(IFCAP_TXCSUM_IPV6 & ifp->if_capenable)) {
				FUNC10(ifp, "enable txcsum6 first.\n");
				error = EAGAIN;
				goto out;
			}
			ifp->if_capenable ^= IFCAP_TSO6;
			ifp->if_hwassist ^= CSUM_IP6_TSO;
		}
		if (mask & IFCAP_VLAN_HWFILTER) {
			if (ifp->if_capenable & IFCAP_VLAN_HWFILTER)
				FUNC17(priv);
			else
				FUNC18(priv);

			ifp->if_capenable ^= IFCAP_VLAN_HWFILTER;
		}
		if (mask & IFCAP_VLAN_HWTAGGING)
			ifp->if_capenable ^= IFCAP_VLAN_HWTAGGING;
		if (mask & IFCAP_WOL_MAGIC)
			ifp->if_capenable ^= IFCAP_WOL_MAGIC;

		FUNC3(ifp);
		/* turn off LRO means also turn of HW LRO - if it's on */
		if (mask & IFCAP_LRO) {
			int was_opened = FUNC24(MLX5E_STATE_OPENED, &priv->state);
			bool need_restart = false;

			ifp->if_capenable ^= IFCAP_LRO;

			/* figure out if updating HW LRO is needed */
			if (!(ifp->if_capenable & IFCAP_LRO)) {
				if (priv->params.hw_lro_en) {
					priv->params.hw_lro_en = false;
					need_restart = true;
				}
			} else {
				if (priv->params.hw_lro_en == false &&
				    priv->params_ethtool.hw_lro != 0) {
					priv->params.hw_lro_en = true;
					need_restart = true;
				}
			}
			if (was_opened && need_restart) {
				FUNC16(ifp);
				FUNC19(ifp);
			}
		}
		if (mask & IFCAP_HWRXTSTMP) {
			ifp->if_capenable ^= IFCAP_HWRXTSTMP;
			if (ifp->if_capenable & IFCAP_HWRXTSTMP) {
				if (priv->clbr_done == 0)
					FUNC20(priv);
			} else {
				FUNC4(&priv->tstmp_clbr);
				priv->clbr_done = 0;
			}
		}
out:
		FUNC2(priv);
		break;

	case SIOCGI2C:
		ifr = (struct ifreq *)data;

		/*
		 * Copy from the user-space address ifr_data to the
		 * kernel-space address i2c
		 */
		error = FUNC5(FUNC9(ifr), &i2c, sizeof(i2c));
		if (error)
			break;

		if (i2c.len > sizeof(i2c.data)) {
			error = EINVAL;
			break;
		}

		FUNC1(priv);
		/* Get module_num which is required for the query_eeprom */
		error = FUNC12(priv->mdev, &module_num);
		if (error) {
			FUNC10(ifp,
			    "Query module num failed, eeprom reading is not supported\n");
			error = EINVAL;
			goto err_i2c;
		}
		/* Check if module is present before doing an access */
		module_status = FUNC13(priv->mdev, module_num);
		if (module_status != MLX5_MODULE_STATUS_PLUGGED_ENABLED) {
			error = EINVAL;
			goto err_i2c;
		}
		/*
		 * Currently 0XA0 and 0xA2 are the only addresses permitted.
		 * The internal conversion is as follows:
		 */
		if (i2c.dev_addr == 0xA0)
			read_addr = MLX5_I2C_ADDR_LOW;
		else if (i2c.dev_addr == 0xA2)
			read_addr = MLX5_I2C_ADDR_HIGH;
		else {
			FUNC10(ifp,
			    "Query eeprom failed, Invalid Address: %X\n",
			    i2c.dev_addr);
			error = EINVAL;
			goto err_i2c;
		}
		error = FUNC11(priv->mdev,
		    read_addr, MLX5_EEPROM_LOW_PAGE,
		    (uint32_t)i2c.offset, (uint32_t)i2c.len, module_num,
		    (uint32_t *)i2c.data, &size_read);
		if (error) {
			FUNC10(ifp,
			    "Query eeprom failed, eeprom reading is not supported\n");
			error = EINVAL;
			goto err_i2c;
		}

		if (i2c.len > MLX5_EEPROM_MAX_BYTES) {
			error = FUNC11(priv->mdev,
			    read_addr, MLX5_EEPROM_LOW_PAGE,
			    (uint32_t)(i2c.offset + size_read),
			    (uint32_t)(i2c.len - size_read), module_num,
			    (uint32_t *)(i2c.data + size_read), &size_read);
		}
		if (error) {
			FUNC10(ifp,
			    "Query eeprom failed, eeprom reading is not supported\n");
			error = EINVAL;
			goto err_i2c;
		}

		error = FUNC6(&i2c, FUNC9(ifr), sizeof(i2c));
err_i2c:
		FUNC2(priv);
		break;

	default:
		error = FUNC7(ifp, command, data);
		break;
	}
	return (error);
}