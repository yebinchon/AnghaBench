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

/* Variables and functions */
 int /*<<< orphan*/  MLX5_FWDUMP_FORCE ; 
 int FUNC0 (int,int /*<<< orphan*/ ,struct mlx5_tool_addr const*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 

__attribute__((used)) static int
FUNC2(int ctldev, const struct mlx5_tool_addr *addr)
{

	if (FUNC0(ctldev, MLX5_FWDUMP_FORCE, addr) == -1) {
		FUNC1("MLX5_FWDUMP_FORCE");
		return (1);
	}
	return (0);
}