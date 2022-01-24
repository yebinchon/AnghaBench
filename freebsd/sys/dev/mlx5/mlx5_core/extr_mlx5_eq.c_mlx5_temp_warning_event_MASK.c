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
typedef  int /*<<< orphan*/  uintmax_t ;
struct TYPE_3__ {int /*<<< orphan*/  sensor_warning_lsb; int /*<<< orphan*/  sensor_warning_msb; } ;
struct TYPE_4__ {TYPE_1__ temp_warning; } ;
struct mlx5_eqe {TYPE_2__ data; } ;
struct mlx5_core_dev {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct mlx5_core_dev*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC2(struct mlx5_core_dev *dev, struct mlx5_eqe *eqe)
{

	FUNC1(dev,
	    "High temperature on sensors with bit set %#jx %#jx\n",
	    (uintmax_t)FUNC0(eqe->data.temp_warning.sensor_warning_msb),
	    (uintmax_t)FUNC0(eqe->data.temp_warning.sensor_warning_lsb));
}