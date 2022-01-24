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
typedef  int /*<<< orphan*/  uint64_t ;
typedef  int /*<<< orphan*/  u64 ;
typedef  int /*<<< orphan*/  u32 ;
struct mlx5e_port_stats_debug {void** arg; } ;
struct mlx5e_pport_stats {void** arg; } ;
struct TYPE_2__ {struct mlx5e_port_stats_debug port_stats_debug; struct mlx5e_pport_stats pport; } ;
struct mlx5e_priv {TYPE_1__ stats; struct mlx5_core_dev* mdev; } ;
struct mlx5_core_dev {int dummy; } ;

/* Variables and functions */
 unsigned int MLX5E_PPORT_ETHERNET_EXTENDED_STATS_DEBUG_NUM ; 
 unsigned int MLX5E_PPORT_IEEE802_3_STATS_NUM ; 
 unsigned int MLX5E_PPORT_PER_PRIO_STATS_NUM ; 
 unsigned int MLX5E_PPORT_PER_PRIO_STATS_NUM_PRIO ; 
 unsigned int MLX5E_PPORT_PHYSICAL_LAYER_STATS_DEBUG_NUM ; 
 unsigned int MLX5E_PPORT_RFC2819_STATS_DEBUG_NUM ; 
 unsigned int MLX5E_PPORT_RFC2819_STATS_NUM ; 
 unsigned int MLX5E_PPORT_RFC2863_STATS_DEBUG_NUM ; 
 unsigned int MLX5E_PPORT_STATISTICAL_DEBUG_NUM ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (struct mlx5_core_dev*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (struct mlx5_core_dev*,int /*<<< orphan*/ ) ; 
 unsigned int MLX5_ETHERNET_EXTENDED_COUNTERS_GROUP ; 
 unsigned int MLX5_IEEE_802_3_COUNTERS_GROUP ; 
 unsigned int MLX5_PER_PRIORITY_COUNTERS_GROUP ; 
 unsigned int MLX5_PHYSICAL_LAYER_COUNTERS_GROUP ; 
 unsigned int MLX5_PHYSICAL_LAYER_STATISTICAL_GROUP ; 
 int /*<<< orphan*/  MLX5_REG_PPCNT ; 
 unsigned int MLX5_RFC_2819_COUNTERS_GROUP ; 
 unsigned int MLX5_RFC_2863_COUNTERS_GROUP ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,unsigned int) ; 
 unsigned int FUNC4 (int /*<<< orphan*/ ) ; 
 void* FUNC5 (int /*<<< orphan*/  const) ; 
 int /*<<< orphan*/  counter_set ; 
 int /*<<< orphan*/  grp ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  local_port ; 
 int /*<<< orphan*/  FUNC7 (struct mlx5_core_dev*,int /*<<< orphan*/ *,unsigned int,int /*<<< orphan*/ *,unsigned int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC8 (unsigned int) ; 
 int /*<<< orphan*/  FUNC9 (struct mlx5e_priv*) ; 
 int /*<<< orphan*/  pcam_reg ; 
 int /*<<< orphan*/  per_lane_error_counters ; 
 int /*<<< orphan*/  ppcnt_reg ; 
 int /*<<< orphan*/  ppcnt_statistical_group ; 
 int /*<<< orphan*/  prio_tc ; 

__attribute__((used)) static void
FUNC10(struct mlx5e_priv *priv)
{
	struct mlx5_core_dev *mdev = priv->mdev;
	struct mlx5e_pport_stats *s = &priv->stats.pport;
	struct mlx5e_port_stats_debug *s_debug = &priv->stats.port_stats_debug;
	u32 *in;
	u32 *out;
	const u64 *ptr;
	unsigned sz = FUNC4(ppcnt_reg);
	unsigned x;
	unsigned y;
	unsigned z;

	/* allocate firmware request structures */
	in = FUNC8(sz);
	out = FUNC8(sz);
	if (in == NULL || out == NULL)
		goto free_out;

	/*
	 * Get pointer to the 64-bit counter set which is located at a
	 * fixed offset in the output firmware request structure:
	 */
	ptr = (const uint64_t *)FUNC0(ppcnt_reg, out, counter_set);

	FUNC3(ppcnt_reg, in, local_port, 1);

	/* read IEEE802_3 counter group using predefined counter layout */
	FUNC3(ppcnt_reg, in, grp, MLX5_IEEE_802_3_COUNTERS_GROUP);
	FUNC7(mdev, in, sz, out, sz, MLX5_REG_PPCNT, 0, 0);
	for (x = 0, y = MLX5E_PPORT_PER_PRIO_STATS_NUM;
	     x != MLX5E_PPORT_IEEE802_3_STATS_NUM; x++, y++)
		s->arg[y] = FUNC5(ptr[x]);

	/* read RFC2819 counter group using predefined counter layout */
	FUNC3(ppcnt_reg, in, grp, MLX5_RFC_2819_COUNTERS_GROUP);
	FUNC7(mdev, in, sz, out, sz, MLX5_REG_PPCNT, 0, 0);
	for (x = 0; x != MLX5E_PPORT_RFC2819_STATS_NUM; x++, y++)
		s->arg[y] = FUNC5(ptr[x]);

	for (y = 0; x != MLX5E_PPORT_RFC2819_STATS_NUM +
	    MLX5E_PPORT_RFC2819_STATS_DEBUG_NUM; x++, y++)
		s_debug->arg[y] = FUNC5(ptr[x]);

	/* read RFC2863 counter group using predefined counter layout */
	FUNC3(ppcnt_reg, in, grp, MLX5_RFC_2863_COUNTERS_GROUP);
	FUNC7(mdev, in, sz, out, sz, MLX5_REG_PPCNT, 0, 0);
	for (x = 0; x != MLX5E_PPORT_RFC2863_STATS_DEBUG_NUM; x++, y++)
		s_debug->arg[y] = FUNC5(ptr[x]);

	/* read physical layer stats counter group using predefined counter layout */
	FUNC3(ppcnt_reg, in, grp, MLX5_PHYSICAL_LAYER_COUNTERS_GROUP);
	FUNC7(mdev, in, sz, out, sz, MLX5_REG_PPCNT, 0, 0);
	for (x = 0; x != MLX5E_PPORT_PHYSICAL_LAYER_STATS_DEBUG_NUM; x++, y++)
		s_debug->arg[y] = FUNC5(ptr[x]);

	/* read Extended Ethernet counter group using predefined counter layout */
	FUNC3(ppcnt_reg, in, grp, MLX5_ETHERNET_EXTENDED_COUNTERS_GROUP);
	FUNC7(mdev, in, sz, out, sz, MLX5_REG_PPCNT, 0, 0);
	for (x = 0; x != MLX5E_PPORT_ETHERNET_EXTENDED_STATS_DEBUG_NUM; x++, y++)
		s_debug->arg[y] = FUNC5(ptr[x]);

	/* read Extended Statistical Group */
	if (FUNC1(mdev, pcam_reg) &&
	    FUNC2(mdev, ppcnt_statistical_group) &&
	    FUNC2(mdev, per_lane_error_counters)) {
		/* read Extended Statistical counter group using predefined counter layout */
		FUNC3(ppcnt_reg, in, grp, MLX5_PHYSICAL_LAYER_STATISTICAL_GROUP);
		FUNC7(mdev, in, sz, out, sz, MLX5_REG_PPCNT, 0, 0);

		for (x = 0; x != MLX5E_PPORT_STATISTICAL_DEBUG_NUM; x++, y++)
			s_debug->arg[y] = FUNC5(ptr[x]);
	}

	/* read PCIE counters */
	FUNC9(priv);

	/* read per-priority counters */
	FUNC3(ppcnt_reg, in, grp, MLX5_PER_PRIORITY_COUNTERS_GROUP);

	/* iterate all the priorities */
	for (y = z = 0; z != MLX5E_PPORT_PER_PRIO_STATS_NUM_PRIO; z++) {
		FUNC3(ppcnt_reg, in, prio_tc, z);
		FUNC7(mdev, in, sz, out, sz, MLX5_REG_PPCNT, 0, 0);

		/* read per priority stats counter group using predefined counter layout */
		for (x = 0; x != (MLX5E_PPORT_PER_PRIO_STATS_NUM /
		    MLX5E_PPORT_PER_PRIO_STATS_NUM_PRIO); x++, y++)
			s->arg[y] = FUNC5(ptr[x]);
	}

free_out:
	/* free firmware request structures */
	FUNC6(in);
	FUNC6(out);
}