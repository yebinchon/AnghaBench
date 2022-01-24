#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int u8 ;
struct TYPE_2__ {int* max_bw_value; } ;
struct mlx5e_priv {TYPE_1__ params_ethtool; struct mlx5_core_dev* mdev; } ;
struct mlx5_core_dev {int dummy; } ;

/* Variables and functions */
 int IEEE_8021QAZ_MAX_TCS ; 
 int MLX5E_100MB ; 
 int MLX5E_1GB ; 
#define  MLX5_100_MBPS_UNIT 130 
#define  MLX5_BW_NO_LIMIT 129 
#define  MLX5_GBPS_UNIT 128 
 int /*<<< orphan*/  FUNC0 (struct mlx5e_priv*) ; 
 int /*<<< orphan*/  FUNC1 (struct mlx5e_priv*) ; 
 int /*<<< orphan*/  FUNC2 (int,char*) ; 
 int FUNC3 (struct mlx5_core_dev*) ; 
 int FUNC4 (struct mlx5_core_dev*,int*,int*) ; 

__attribute__((used)) static int
FUNC5(struct mlx5e_priv *priv)
{
	struct mlx5_core_dev *mdev = priv->mdev;
	u8 max_bw_unit[IEEE_8021QAZ_MAX_TCS];
	u8 max_bw_value[IEEE_8021QAZ_MAX_TCS];
	int err;
	int i;

	FUNC0(priv);
	err = -FUNC4(mdev, max_bw_value, max_bw_unit);
	if (err)
		goto done;

	for (i = 0; i <= FUNC3(mdev); i++) {
		switch (max_bw_unit[i]) {
		case MLX5_100_MBPS_UNIT:
			priv->params_ethtool.max_bw_value[i] = max_bw_value[i] * MLX5E_100MB;
			break;
		case MLX5_GBPS_UNIT:
			priv->params_ethtool.max_bw_value[i] = max_bw_value[i] * MLX5E_1GB;
			break;
		case MLX5_BW_NO_LIMIT:
			priv->params_ethtool.max_bw_value[i] = 0;
			break;
		default:
			priv->params_ethtool.max_bw_value[i] = -1;
			FUNC2(true, "non-supported BW unit");
			break;
		}
	}
done:
	FUNC1(priv);
	return (err);
}