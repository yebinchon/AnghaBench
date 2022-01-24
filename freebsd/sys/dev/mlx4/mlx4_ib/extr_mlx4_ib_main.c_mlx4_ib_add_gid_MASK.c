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
typedef  union ib_gid {int dummy; } ib_gid ;
typedef  int u8 ;
struct mlx4_port_gid_table {TYPE_1__* gids; } ;
struct mlx4_ib_iboe {int /*<<< orphan*/  lock; struct mlx4_port_gid_table* gids; } ;
struct mlx4_ib_dev {struct mlx4_ib_iboe iboe; } ;
struct ib_gid_attr {scalar_t__ gid_type; } ;
struct ib_device {int dummy; } ;
struct gid_entry {scalar_t__ gid_type; union ib_gid const gid; } ;
struct gid_cache_context {int real_index; int refcount; } ;
struct TYPE_2__ {scalar_t__ gid_type; union ib_gid const gid; struct gid_cache_context* ctx; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int ENOSPC ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int MLX4_MAX_PORTS ; 
 int MLX4_MAX_PORT_GIDS ; 
 int /*<<< orphan*/  FUNC0 (struct gid_entry*) ; 
 void* FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (union ib_gid const*,union ib_gid const*,int) ; 
 int /*<<< orphan*/  FUNC3 (union ib_gid const*,union ib_gid const*,int) ; 
 int FUNC4 (struct gid_entry*,struct mlx4_ib_dev*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct ib_device*,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 struct mlx4_ib_dev* FUNC8 (struct ib_device*) ; 
 union ib_gid const zgid ; 

__attribute__((used)) static int FUNC9(struct ib_device *device,
			   u8 port_num,
			   unsigned int index,
			   const union ib_gid *gid,
			   const struct ib_gid_attr *attr,
			   void **context)
{
	struct mlx4_ib_dev *ibdev = FUNC8(device);
	struct mlx4_ib_iboe *iboe = &ibdev->iboe;
	struct mlx4_port_gid_table   *port_gid_table;
	int free = -1, found = -1;
	int ret = 0;
	int hw_update = 0;
	int i;
	struct gid_entry *gids = NULL;

	if (!FUNC5(device, port_num))
		return -EINVAL;

	if (port_num > MLX4_MAX_PORTS)
		return -EINVAL;

	if (!context)
		return -EINVAL;

	port_gid_table = &iboe->gids[port_num - 1];
	FUNC6(&iboe->lock);
	for (i = 0; i < MLX4_MAX_PORT_GIDS; ++i) {
		if (!FUNC2(&port_gid_table->gids[i].gid, gid, sizeof(*gid)) &&
		    (port_gid_table->gids[i].gid_type == attr->gid_type))  {
			found = i;
			break;
		}
		if (free < 0 && !FUNC2(&port_gid_table->gids[i].gid, &zgid, sizeof(*gid)))
			free = i; /* HW has space */
	}

	if (found < 0) {
		if (free < 0) {
			ret = -ENOSPC;
		} else {
			port_gid_table->gids[free].ctx = FUNC1(sizeof(*port_gid_table->gids[free].ctx), GFP_ATOMIC);
			if (!port_gid_table->gids[free].ctx) {
				ret = -ENOMEM;
			} else {
				*context = port_gid_table->gids[free].ctx;
				FUNC3(&port_gid_table->gids[free].gid, gid, sizeof(*gid));
				port_gid_table->gids[free].gid_type = attr->gid_type;
				port_gid_table->gids[free].ctx->real_index = free;
				port_gid_table->gids[free].ctx->refcount = 1;
				hw_update = 1;
			}
		}
	} else {
		struct gid_cache_context *ctx = port_gid_table->gids[found].ctx;
		*context = ctx;
		ctx->refcount++;
	}
	if (!ret && hw_update) {
		gids = FUNC1(sizeof(*gids) * MLX4_MAX_PORT_GIDS, GFP_ATOMIC);
		if (!gids) {
			ret = -ENOMEM;
		} else {
			for (i = 0; i < MLX4_MAX_PORT_GIDS; i++) {
				FUNC3(&gids[i].gid, &port_gid_table->gids[i].gid, sizeof(union ib_gid));
				gids[i].gid_type = port_gid_table->gids[i].gid_type;
			}
		}
	}
	FUNC7(&iboe->lock);

	if (!ret && hw_update) {
		ret = FUNC4(gids, ibdev, port_num);
		FUNC0(gids);
	}

	return ret;
}