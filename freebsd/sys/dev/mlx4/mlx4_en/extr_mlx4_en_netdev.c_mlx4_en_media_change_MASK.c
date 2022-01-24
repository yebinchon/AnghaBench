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
struct ifmedia {int ifm_media; } ;
struct mlx4_en_priv {TYPE_2__* prof; scalar_t__ rx_mb_size; int /*<<< orphan*/  port; TYPE_1__* mdev; struct ifmedia media; } ;
struct ifnet {struct mlx4_en_priv* if_softc; } ;
struct TYPE_4__ {int tx_pause; int rx_pause; int /*<<< orphan*/  rx_ppp; int /*<<< orphan*/  tx_ppp; } ;
struct TYPE_3__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int EINVAL ; 
 scalar_t__ ETHER_CRC_LEN ; 
#define  IFM_1000_T 132 
#define  IFM_10G_CX4 131 
#define  IFM_10G_SR 130 
#define  IFM_40G_CR4 129 
#define  IFM_AUTO 128 
 scalar_t__ IFM_ETHER ; 
 int IFM_ETH_RXPAUSE ; 
 int IFM_ETH_TXPAUSE ; 
 int IFM_FDX ; 
 int FUNC0 (int) ; 
 int FUNC1 (int) ; 
 scalar_t__ FUNC2 (int) ; 
 char* FUNC3 (struct ifnet*) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,int,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int FUNC5 (struct mlx4_en_priv*) ; 
 int /*<<< orphan*/  FUNC6 (char*,char*) ; 

__attribute__((used)) static int FUNC7(struct ifnet *dev)
{
	struct mlx4_en_priv *priv;
        struct ifmedia *ifm;
	int rxpause;
	int txpause;
	int error;

	priv = dev->if_softc;
	ifm = &priv->media;
	rxpause = txpause = 0;
	error = 0;

	if (FUNC2(ifm->ifm_media) != IFM_ETHER)
		return (EINVAL);
        switch (FUNC1(ifm->ifm_media)) {
        case IFM_AUTO:
		break;
	case IFM_10G_SR:
	case IFM_10G_CX4:
	case IFM_1000_T:
	case IFM_40G_CR4:
		if ((FUNC1(ifm->ifm_media)
			== FUNC1(FUNC5(priv)))
			&& (ifm->ifm_media & IFM_FDX))
			break;
		/* Fallthrough */
	default:
                FUNC6("%s: Only auto media type\n", FUNC3(dev));
                return (EINVAL);
	}
	/* Allow user to set/clear pause */
	if (FUNC0(ifm->ifm_media) & IFM_ETH_RXPAUSE)
		rxpause = 1;
	if (FUNC0(ifm->ifm_media) & IFM_ETH_TXPAUSE)
		txpause = 1;
	if (priv->prof->tx_pause != txpause || priv->prof->rx_pause != rxpause) {
		priv->prof->tx_pause = txpause;
		priv->prof->rx_pause = rxpause;
		error = -FUNC4(priv->mdev->dev, priv->port,
		     priv->rx_mb_size + ETHER_CRC_LEN, priv->prof->tx_pause,
		     priv->prof->tx_ppp, priv->prof->rx_pause,
		     priv->prof->rx_ppp);
	}
	return (error);
}