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
struct mlx5_ib_dev {int dummy; } ;
struct mlx5_err_cqe {int dummy; } ;
typedef  int /*<<< orphan*/  __be32 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct mlx5_ib_dev*,char*) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct mlx5_ib_dev *dev, struct mlx5_err_cqe *cqe)
{
	__be32 *p = (__be32 *)cqe;
	int i;

	FUNC1(dev, "dump error cqe\n");
	for (i = 0; i < sizeof(*cqe) / 16; i++, p += 4)
		FUNC2("%08x %08x %08x %08x\n", FUNC0(p[0]),
			FUNC0(p[1]), FUNC0(p[2]),
			FUNC0(p[3]));
}