#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u16 ;
struct TYPE_6__ {int /*<<< orphan*/  list; int /*<<< orphan*/  type; } ;
struct mlx5_flow_table {scalar_t__ type; int max_fte; int id; int /*<<< orphan*/  vport; TYPE_1__ base; scalar_t__ level; int /*<<< orphan*/  fgs; } ;
struct mlx5_flow_root_namespace {scalar_t__ table_type; int /*<<< orphan*/  dev; } ;
struct TYPE_7__ {int /*<<< orphan*/  name; } ;
struct mlx5_flow_namespace {TYPE_2__ base; } ;
struct mlx5_core_dev {int dummy; } ;
struct fs_prio {scalar_t__ num_ft; scalar_t__ max_ft; int /*<<< orphan*/  objs; int /*<<< orphan*/  base; } ;
struct TYPE_8__ {int /*<<< orphan*/  modify_root; } ;

/* Variables and functions */
 int ENODEV ; 
 int ENOMEM ; 
 int ENOSPC ; 
 struct mlx5_flow_table* FUNC0 (int) ; 
 scalar_t__ FS_FT_ESW_EGRESS_ACL ; 
 scalar_t__ FS_FT_ESW_INGRESS_ACL ; 
 scalar_t__ FS_FT_NIC_RX ; 
 int /*<<< orphan*/  FS_TYPE_FLOW_TABLE ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,char const*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (struct fs_prio*) ; 
 int FUNC5 (struct mlx5_flow_table*,struct fs_prio*) ; 
 int /*<<< orphan*/  FUNC6 (struct mlx5_flow_table*,struct fs_prio*) ; 
 struct mlx5_flow_root_namespace* FUNC7 (TYPE_2__*) ; 
 TYPE_3__ flow_table_properties_nic_receive ; 
 struct mlx5_core_dev* FUNC8 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*,int) ; 
 int FUNC10 (int) ; 
 int /*<<< orphan*/  FUNC11 (struct mlx5_flow_table*) ; 
 struct mlx5_flow_table* FUNC12 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,scalar_t__,int,int*) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC16 (struct mlx5_core_dev*,char*,int /*<<< orphan*/ ) ; 
 int FUNC17 (int) ; 
 int /*<<< orphan*/  FUNC18 (char*,int,char*,int) ; 
 int /*<<< orphan*/  FUNC19 (char const*) ; 
 int FUNC20 (struct mlx5_flow_root_namespace*,struct mlx5_flow_table*) ; 

__attribute__((used)) static struct mlx5_flow_table *FUNC21(struct mlx5_flow_namespace *ns,
						 u16 vport,
						 struct fs_prio *fs_prio,
						 int max_fte,
						 const char *name)
{
	struct mlx5_flow_table *ft;
	int err;
	int log_table_sz;
	int ft_size;
	char gen_name[20];
	struct mlx5_flow_root_namespace *root = FUNC7(&ns->base);
	struct mlx5_core_dev *dev = FUNC8(&ns->base);

	if (!root) {
		FUNC16(dev,
		    "flow steering failed to find root of namespace %s",
		    ns->base.name);
		return FUNC0(-ENODEV);
	}

	if (fs_prio->num_ft == fs_prio->max_ft)
		return FUNC0(-ENOSPC);

	ft  = FUNC12(sizeof(*ft), GFP_KERNEL);
	if (!ft)
		return FUNC0(-ENOMEM);

	FUNC9(&ft->base, 1);
	FUNC1(&ft->fgs);

	/* Temporarily WA until we expose the level set in the API */
	if (root->table_type == FS_FT_ESW_EGRESS_ACL ||
		root->table_type == FS_FT_ESW_INGRESS_ACL)
		ft->level = 0;
	else
		ft->level = FUNC4(fs_prio);

	ft->base.type = FS_TYPE_FLOW_TABLE;
	ft->vport = vport;
	ft->type = root->table_type;
	/*Two entries are reserved for star rules*/
	ft_size = FUNC17(max_fte + 2);
	/*User isn't aware to those rules*/
	ft->max_fte = ft_size - 2;
	log_table_sz = FUNC10(ft_size);
	err = FUNC14(root->dev, ft->vport, ft->type,
				    ft->level, log_table_sz, &ft->id);
	if (err)
		goto free_ft;

	err = FUNC5(ft, fs_prio);
	if (err)
		goto del_ft;

	if ((root->table_type == FS_FT_NIC_RX) && FUNC2(root->dev,
			       flow_table_properties_nic_receive.modify_root)) {
		err = FUNC20(root, ft);
		if (err)
			goto destroy_star_rule;
	}

	if (!name || !FUNC19(name)) {
		FUNC18(gen_name, 20, "flow_table_%u", ft->id);
		FUNC3(&ft->base, gen_name, &fs_prio->base);
	} else {
		FUNC3(&ft->base, name, &fs_prio->base);
	}
	FUNC13(&ft->base.list, &fs_prio->objs);
	fs_prio->num_ft++;

	return ft;

destroy_star_rule:
	FUNC6(ft, fs_prio);
del_ft:
	FUNC15(root->dev, ft->vport, ft->type, ft->id);
free_ft:
	FUNC11(ft);
	return FUNC0(err);
}