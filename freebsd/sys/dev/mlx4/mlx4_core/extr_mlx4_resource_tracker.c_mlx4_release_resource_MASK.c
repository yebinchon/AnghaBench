#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct resource_allocator {int* allocated; int* guaranteed; int* res_port_free; int* res_port_rsvd; int res_free; int res_reserved; int /*<<< orphan*/  alloc_lock; } ;
struct TYPE_5__ {struct resource_allocator* res_alloc; } ;
struct TYPE_6__ {TYPE_1__ res_tracker; } ;
struct TYPE_7__ {TYPE_2__ master; } ;
struct mlx4_priv {TYPE_3__ mfunc; } ;
struct mlx4_dev {TYPE_4__* persist; } ;
typedef  enum mlx4_resource { ____Placeholder_mlx4_resource } mlx4_resource ;
struct TYPE_8__ {int num_vfs; } ;

/* Variables and functions */
 struct mlx4_priv* FUNC0 (struct mlx4_dev*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static inline void FUNC3(struct mlx4_dev *dev, int slave,
				    enum mlx4_resource res_type, int count,
				    int port)
{
	struct mlx4_priv *priv = FUNC0(dev);
	struct resource_allocator *res_alloc =
		&priv->mfunc.master.res_tracker.res_alloc[res_type];
	int allocated, guaranteed, from_rsvd;

	if (slave > dev->persist->num_vfs)
		return;

	FUNC1(&res_alloc->alloc_lock);

	allocated = (port > 0) ?
		res_alloc->allocated[(port - 1) *
		(dev->persist->num_vfs + 1) + slave] :
		res_alloc->allocated[slave];
	guaranteed = res_alloc->guaranteed[slave];

	if (allocated - count >= guaranteed) {
		from_rsvd = 0;
	} else {
		/* portion may need to be returned to reserved area */
		if (allocated - guaranteed > 0)
			from_rsvd = count - (allocated - guaranteed);
		else
			from_rsvd = count;
	}

	if (port > 0) {
		res_alloc->allocated[(port - 1) *
		(dev->persist->num_vfs + 1) + slave] -= count;
		res_alloc->res_port_free[port - 1] += count;
		res_alloc->res_port_rsvd[port - 1] += from_rsvd;
	} else {
		res_alloc->allocated[slave] -= count;
		res_alloc->res_free += count;
		res_alloc->res_reserved += from_rsvd;
	}

	FUNC2(&res_alloc->alloc_lock);
	return;
}