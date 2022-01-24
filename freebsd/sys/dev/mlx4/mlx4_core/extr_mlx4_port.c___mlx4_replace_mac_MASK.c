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
typedef  size_t u8 ;
typedef  int u64 ;
struct mlx4_mac_table {int /*<<< orphan*/  mutex; void** entries; } ;
struct mlx4_port_info {int base_qpn; struct mlx4_mac_table mac_table; } ;
struct mlx4_dev {int dummy; } ;
struct TYPE_2__ {struct mlx4_port_info* port; } ;

/* Variables and functions */
 int MLX4_MAC_VALID ; 
 int /*<<< orphan*/  SINGLE_DEPTH_NESTING ; 
 void* FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct mlx4_dev*,char*,unsigned long long) ; 
 int FUNC2 (struct mlx4_dev*) ; 
 TYPE_1__* FUNC3 (struct mlx4_dev*) ; 
 int FUNC4 (struct mlx4_dev*,size_t,void**) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC8 (int) ; 
 int FUNC9 (struct mlx4_dev*,struct mlx4_mac_table*,int) ; 

int FUNC10(struct mlx4_dev *dev, u8 port, int qpn, u64 new_mac)
{
	struct mlx4_port_info *info = &FUNC3(dev)->port[port];
	struct mlx4_mac_table *table = &info->mac_table;
	int index = qpn - info->base_qpn;
	int err = 0;
	bool dup = FUNC2(dev);
	u8 dup_port = (port == 1) ? 2 : 1;
	struct mlx4_mac_table *dup_table = &FUNC3(dev)->port[dup_port].mac_table;

	/* CX1 doesn't support multi-functions */
	if (dup) {
		if (port == 1) {
			FUNC5(&table->mutex);
			FUNC6(&dup_table->mutex, SINGLE_DEPTH_NESTING);
		} else {
			FUNC5(&dup_table->mutex);
			FUNC6(&table->mutex, SINGLE_DEPTH_NESTING);
		}
	} else {
		FUNC5(&table->mutex);
	}

	err = FUNC9(dev, table, index);
	if (err)
		goto out;

	table->entries[index] = FUNC0(new_mac | MLX4_MAC_VALID);

	err = FUNC4(dev, port, table->entries);
	if (FUNC8(err)) {
		FUNC1(dev, "Failed adding MAC: 0x%llx\n",
			 (unsigned long long) new_mac);
		table->entries[index] = 0;
	} else {
		if (dup) {
			dup_table->entries[index] = FUNC0(new_mac | MLX4_MAC_VALID);

			err = FUNC4(dev, dup_port, dup_table->entries);
			if (FUNC8(err)) {
				FUNC1(dev, "Failed adding duplicate MAC: 0x%llx\n",
					 (unsigned long long)new_mac);
				dup_table->entries[index] = 0;
			}
		}
	}
out:
	if (dup) {
		if (port == 2) {
			FUNC7(&table->mutex);
			FUNC7(&dup_table->mutex);
		} else {
			FUNC7(&dup_table->mutex);
			FUNC7(&table->mutex);
		}
	} else {
		FUNC7(&table->mutex);
	}
	return err;
}