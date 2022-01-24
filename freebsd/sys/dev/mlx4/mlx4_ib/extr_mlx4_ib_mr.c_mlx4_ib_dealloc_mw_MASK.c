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
struct mlx4_ib_mw {int /*<<< orphan*/  mmw; } ;
struct ib_mw {int /*<<< orphan*/  device; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct mlx4_ib_mw*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC2 (int /*<<< orphan*/ ) ; 
 struct mlx4_ib_mw* FUNC3 (struct ib_mw*) ; 

int FUNC4(struct ib_mw *ibmw)
{
	struct mlx4_ib_mw *mw = FUNC3(ibmw);

	FUNC1(FUNC2(ibmw->device)->dev, &mw->mmw);
	FUNC0(mw);

	return 0;
}