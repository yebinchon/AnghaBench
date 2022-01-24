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
struct mlx5e_priv {TYPE_1__* mdev; int /*<<< orphan*/  sysctl_hw; int /*<<< orphan*/  sysctl_ctx; } ;
struct TYPE_2__ {int /*<<< orphan*/  board_id; } ;

/* Variables and functions */
 int CTLFLAG_RD ; 
 int CTLTYPE_STRING ; 
 int /*<<< orphan*/  OID_AUTO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int,struct mlx5e_priv*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  sysctl_firmware ; 

__attribute__((used)) static void
FUNC3(struct mlx5e_priv *priv)
{
	FUNC0(&priv->sysctl_ctx, FUNC2(priv->sysctl_hw),
	    OID_AUTO, "fw_version", CTLTYPE_STRING | CTLFLAG_RD, priv, 0,
	    sysctl_firmware, "A", "HCA firmware version");

	FUNC1(&priv->sysctl_ctx, FUNC2(priv->sysctl_hw),
	    OID_AUTO, "board_id", CTLFLAG_RD, priv->mdev->board_id, 0,
	    "Board ID");
}