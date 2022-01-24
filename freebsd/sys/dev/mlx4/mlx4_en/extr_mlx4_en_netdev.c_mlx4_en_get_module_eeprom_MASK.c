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
typedef  int /*<<< orphan*/  u8 ;
struct net_device {int dummy; } ;
struct mlx4_en_priv {int /*<<< orphan*/  port; struct mlx4_en_dev* mdev; } ;
struct mlx4_en_dev {int /*<<< orphan*/  dev; } ;
struct ethtool_eeprom {int offset; int len; } ;

/* Variables and functions */
 int /*<<< orphan*/  DRV ; 
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct mlx4_en_priv*,char*,int,int,int) ; 
 int /*<<< orphan*/  FUNC1 (struct mlx4_en_priv*,char*,int,int,int,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ *) ; 
 struct mlx4_en_priv* FUNC4 (struct net_device*) ; 

__attribute__((used)) static int FUNC5(struct net_device *dev,
				     struct ethtool_eeprom *ee,
				     u8 *data)
{
	struct mlx4_en_priv *priv = FUNC4(dev);
	struct mlx4_en_dev *mdev = priv->mdev;
	int offset = ee->offset;
	int i = 0, ret;

	if (ee->len == 0)
		return -EINVAL;

	FUNC2(data, 0, ee->len);

	while (i < ee->len) {
		FUNC0(DRV, priv,
		       "mlx4_get_module_info i(%d) offset(%d) len(%d)\n",
		       i, offset, ee->len - i);

		ret = FUNC3(mdev->dev, priv->port,
					   offset, ee->len - i, data + i);

		if (!ret) /* Done reading */
			return 0;

		if (ret < 0) {
			FUNC1(priv,
			       "mlx4_get_module_info i(%d) offset(%d) bytes_to_read(%d) - FAILED (0x%x)\n",
			       i, offset, ee->len - i, ret);
			return -1;
		}

		i += ret;
		offset += ret;
	}
	return 0;
}