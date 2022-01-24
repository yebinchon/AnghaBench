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
typedef  int u64 ;
typedef  scalar_t__ u32 ;
struct mlx4_priv {scalar_t__ clock_mapping; } ;
struct mlx4_dev {int dummy; } ;
typedef  int s64 ;

/* Variables and functions */
 int CORE_CLOCK_MASK ; 
 int ENOTSUPP ; 
 struct mlx4_priv* FUNC0 (struct mlx4_dev*) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 

s64 FUNC3(struct mlx4_dev *dev)
{
	u32 clockhi, clocklo, clockhi1;
	s64 cycles;
	int i;
	struct mlx4_priv *priv = FUNC0(dev);

	if (!priv->clock_mapping)
		return -ENOTSUPP;

	for (i = 0; i < 10; i++) {
		clockhi = FUNC2(FUNC1(priv->clock_mapping));
		clocklo = FUNC2(FUNC1(priv->clock_mapping + 4));
		clockhi1 = FUNC2(FUNC1(priv->clock_mapping));
		if (clockhi == clockhi1)
			break;
	}

	cycles = (u64) clockhi << 32 | (u64) clocklo;

	return cycles & CORE_CLOCK_MASK;
}