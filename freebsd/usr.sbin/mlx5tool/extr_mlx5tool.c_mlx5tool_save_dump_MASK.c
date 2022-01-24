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
struct mlx5_tool_addr {int dummy; } ;
struct mlx5_fwdump_reg {int addr; int val; } ;
struct mlx5_fwdump_get {size_t reg_filled; size_t reg_cnt; struct mlx5_fwdump_reg* buf; struct mlx5_tool_addr devaddr; } ;
typedef  int /*<<< orphan*/  fdg ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 scalar_t__ ENOENT ; 
 int /*<<< orphan*/  MLX5_FWDUMP_GET ; 
 struct mlx5_fwdump_reg* FUNC0 (size_t,int) ; 
 scalar_t__ errno ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,int,int) ; 
 int FUNC4 (int,int /*<<< orphan*/ ,struct mlx5_fwdump_get*) ; 
 int /*<<< orphan*/  FUNC5 (struct mlx5_fwdump_get*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/ * stdout ; 
 int /*<<< orphan*/  FUNC6 (char*,...) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 

__attribute__((used)) static int
FUNC8(int ctldev, const struct mlx5_tool_addr *addr,
    const char *dumpname)
{
	struct mlx5_fwdump_get fdg;
	struct mlx5_fwdump_reg *rege;
	FILE *dump;
	size_t cnt;
	int error, res;

	if (dumpname == NULL)
		dump = stdout;
	else
		dump = FUNC2(dumpname, "w");
	if (dump == NULL) {
		FUNC6("open %s", dumpname);
		return (1);
	}
	res = 1;
	FUNC5(&fdg, 0, sizeof(fdg));
	fdg.devaddr = *addr;
	error = FUNC4(ctldev, MLX5_FWDUMP_GET, &fdg);
	if (error != 0) {
		FUNC6("MLX5_FWDUMP_GET dumpsize");
		goto out;
	}
	rege = FUNC0(fdg.reg_filled, sizeof(*rege));
	if (rege == NULL) {
		FUNC6("alloc rege");
		goto out;
	}
	fdg.buf = rege;
	fdg.reg_cnt = fdg.reg_filled;
	error = FUNC4(ctldev, MLX5_FWDUMP_GET, &fdg);
	if (error != 0) {
		if (errno == ENOENT)
			FUNC7("no dump recorded");
		else
			FUNC6("MLX5_FWDUMP_GET dump fetch");
		goto out;
	}
	for (cnt = 0; cnt < fdg.reg_cnt; cnt++, rege++)
		FUNC3(dump, "0x%08x\t0x%08x\n", rege->addr, rege->val);
	res = 0;
out:
	if (dump != stdout)
		FUNC1(dump);
	return (res);
}