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
typedef  size_t u8 ;
typedef  size_t u16 ;
struct mlx4_vlan_table {int* is_dup; int /*<<< orphan*/  mutex; int /*<<< orphan*/  total; scalar_t__* entries; scalar_t__* refs; } ;
struct mlx4_dev {int dummy; } ;
struct TYPE_4__ {TYPE_1__* port; } ;
struct TYPE_3__ {struct mlx4_vlan_table vlan_table; } ;

/* Variables and functions */
 int MLX4_VLAN_REGULAR ; 
 int /*<<< orphan*/  SINGLE_DEPTH_NESTING ; 
 int /*<<< orphan*/  FUNC0 (struct mlx4_dev*,char*,scalar_t__,int) ; 
 scalar_t__ FUNC1 (struct mlx4_dev*,size_t,size_t,int*) ; 
 int FUNC2 (struct mlx4_dev*) ; 
 TYPE_2__* FUNC3 (struct mlx4_dev*) ; 
 scalar_t__ FUNC4 (struct mlx4_dev*,size_t,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC5 (struct mlx4_dev*,char*,size_t) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 

void FUNC9(struct mlx4_dev *dev, u8 port, u16 vlan)
{
	struct mlx4_vlan_table *table = &FUNC3(dev)->port[port].vlan_table;
	int index;
	bool dup = FUNC2(dev);
	u8 dup_port = (port == 1) ? 2 : 1;
	struct mlx4_vlan_table *dup_table = &FUNC3(dev)->port[dup_port].vlan_table;

	if (dup) {
		if (port == 1) {
			FUNC6(&table->mutex);
			FUNC7(&dup_table->mutex, SINGLE_DEPTH_NESTING);
		} else {
			FUNC6(&dup_table->mutex);
			FUNC7(&table->mutex, SINGLE_DEPTH_NESTING);
		}
	} else {
		FUNC6(&table->mutex);
	}

	if (FUNC1(dev, port, vlan, &index)) {
		FUNC5(dev, "vlan 0x%x is not in the vlan table\n", vlan);
		goto out;
	}

	if (index < MLX4_VLAN_REGULAR) {
		FUNC5(dev, "Trying to free special vlan index %d\n", index);
		goto out;
	}

	if (--table->refs[index] || table->is_dup[index]) {
		FUNC0(dev, "Have %d more references for index %d, no need to modify vlan table\n",
			 table->refs[index], index);
		if (!table->refs[index])
			dup_table->is_dup[index] = false;
		goto out;
	}
	table->entries[index] = 0;
	if (FUNC4(dev, port, table->entries))
		FUNC5(dev, "Fail to set vlan in port %d during unregister\n", port);
	--table->total;
	if (dup) {
		dup_table->is_dup[index] = false;
		if (dup_table->refs[index])
			goto out;
		dup_table->entries[index] = 0;
		if (FUNC4(dev, dup_port, dup_table->entries))
			FUNC5(dev, "Fail to set vlan in duplicate port %d during unregister\n", dup_port);
		--dup_table->total;
	}
out:
	if (dup) {
		if (port == 2) {
			FUNC8(&table->mutex);
			FUNC8(&dup_table->mutex);
		} else {
			FUNC8(&dup_table->mutex);
			FUNC8(&table->mutex);
		}
	} else {
		FUNC8(&table->mutex);
	}
}