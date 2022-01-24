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
typedef  int u32 ;
struct TYPE_4__ {int ifm_media; } ;
struct TYPE_3__ {int rx_pauseframe_control; int tx_pauseframe_control; scalar_t__ tx_priority_flow_control; scalar_t__ rx_priority_flow_control; } ;
struct mlx5e_priv {int /*<<< orphan*/  state; TYPE_2__ media; TYPE_1__ params; struct mlx5_core_dev* mdev; } ;
struct mlx5_core_dev {int dummy; } ;
struct ifnet {struct mlx5e_priv* if_softc; } ;
typedef  int /*<<< orphan*/  out ;

/* Variables and functions */
 int EINVAL ; 
 scalar_t__ IFM_AUTO ; 
 scalar_t__ IFM_ETHER ; 
 int IFM_ETH_RXPAUSE ; 
 int IFM_ETH_TXPAUSE ; 
 scalar_t__ FUNC0 (int) ; 
 scalar_t__ FUNC1 (int) ; 
 int /*<<< orphan*/  MLX5E_STATE_OPENED ; 
 int FUNC2 (struct mlx5_core_dev*,int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ,int*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MLX5_PORT_DOWN ; 
 int /*<<< orphan*/  MLX5_PORT_UP ; 
 int /*<<< orphan*/  MLX5_PTYS_EN ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct mlx5e_priv*) ; 
 int FUNC6 (struct mlx5e_priv*) ; 
 int /*<<< orphan*/  FUNC7 (struct mlx5e_priv*) ; 
 int /*<<< orphan*/  eth_proto_capability ; 
 int /*<<< orphan*/  FUNC8 (struct ifnet*,char*) ; 
 int FUNC9 (struct mlx5_core_dev*,int*,int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC10 (struct mlx5_core_dev*,int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC11 (struct mlx5_core_dev*,int /*<<< orphan*/ ) ; 
 int FUNC12 (scalar_t__,int) ; 
 int FUNC13 (struct mlx5e_priv*) ; 
 int /*<<< orphan*/  ptys_extended_ethernet ; 
 int /*<<< orphan*/  ptys_reg ; 
 int FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC15(struct ifnet *dev)
{
	struct mlx5e_priv *priv = dev->if_softc;
	struct mlx5_core_dev *mdev = priv->mdev;
	u32 eth_proto_cap;
	u32 link_mode;
	u32 out[FUNC4(ptys_reg)];
	int was_opened;
	int locked;
	int error;
	bool ext;

	locked = FUNC6(priv);
	if (!locked)
		FUNC5(priv);

	if (FUNC1(priv->media.ifm_media) != IFM_ETHER) {
		error = EINVAL;
		goto done;
	}

	error = FUNC9(mdev, out, sizeof(out),
	    MLX5_PTYS_EN, 1);
	if (error != 0) {
		FUNC8(dev, "Query port media capability failed\n");
		goto done;
	}

	ext = FUNC2(mdev, ptys_extended_ethernet);
	link_mode = FUNC12(FUNC0(priv->media.ifm_media), ext);

	/* query supported capabilities */
	eth_proto_cap = FUNC3(ptys_reg, out, ext,
	    eth_proto_capability);

	/* check for autoselect */
	if (FUNC0(priv->media.ifm_media) == IFM_AUTO) {
		link_mode = eth_proto_cap;
		if (link_mode == 0) {
			FUNC8(dev, "Port media capability is zero\n");
			error = EINVAL;
			goto done;
		}
	} else {
		link_mode = link_mode & eth_proto_cap;
		if (link_mode == 0) {
			FUNC8(dev, "Not supported link mode requested\n");
			error = EINVAL;
			goto done;
		}
	}
	if (priv->media.ifm_media & (IFM_ETH_RXPAUSE | IFM_ETH_TXPAUSE)) {
		/* check if PFC is enabled */
		if (priv->params.rx_priority_flow_control ||
		    priv->params.tx_priority_flow_control) {
			FUNC8(dev, "PFC must be disabled before enabling global pauseframes.\n");
			error = EINVAL;
			goto done;
		}
	}
	/* update pauseframe control bits */
	priv->params.rx_pauseframe_control =
	    (priv->media.ifm_media & IFM_ETH_RXPAUSE) ? 1 : 0;
	priv->params.tx_pauseframe_control =
	    (priv->media.ifm_media & IFM_ETH_TXPAUSE) ? 1 : 0;

	/* check if device is opened */
	was_opened = FUNC14(MLX5E_STATE_OPENED, &priv->state);

	/* reconfigure the hardware */
	FUNC11(mdev, MLX5_PORT_DOWN);
	FUNC10(mdev, link_mode, MLX5_PTYS_EN, ext);
	error = -FUNC13(priv);
	if (was_opened)
		FUNC11(mdev, MLX5_PORT_UP);

done:
	if (!locked)
		FUNC7(priv);
	return (error);
}