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
typedef  int /*<<< orphan*/  u32 ;
typedef  int /*<<< orphan*/  u16 ;
struct mlx5e_priv {int /*<<< orphan*/  ifp; } ;
typedef  enum mlx5e_vlan_rule_type { ____Placeholder_mlx5e_vlan_rule_type } mlx5e_vlan_rule_type ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  fte_match_param ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (struct mlx5e_priv*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC5(struct mlx5e_priv *priv,
    enum mlx5e_vlan_rule_type rule_type, u16 vid)
{
	u32 *match_criteria;
	u32 *match_value;
	int err = 0;

	match_value	= FUNC3(FUNC0(fte_match_param));
	match_criteria	= FUNC3(FUNC0(fte_match_param));
	if (!match_value || !match_criteria) {
		FUNC2(priv->ifp, "alloc failed\n");
		err = -ENOMEM;
		goto add_vlan_rule_out;
	}

	err = FUNC4(priv, rule_type, vid, match_criteria,
				    match_value);

add_vlan_rule_out:
	FUNC1(match_criteria);
	FUNC1(match_value);

	return (err);
}