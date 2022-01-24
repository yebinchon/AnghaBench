#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct per_user_data {int /*<<< orphan*/  user_data_lock; int /*<<< orphan*/  gmap_tree; } ;
struct ioctl_gntdev_unmap_grant_ref {int /*<<< orphan*/  index; int /*<<< orphan*/  count; } ;
struct gntdev_gmap {TYPE_1__* map; } ;
struct TYPE_6__ {int /*<<< orphan*/  to_kill_gmaps_mtx; int /*<<< orphan*/  to_kill_gmaps; } ;
struct TYPE_5__ {int /*<<< orphan*/  list; } ;
struct TYPE_4__ {int /*<<< orphan*/  mem; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  LOG_ERR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct gntdev_gmap*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,struct gntdev_gmap*,int /*<<< orphan*/ ) ; 
 TYPE_3__ cleanup_data ; 
 int /*<<< orphan*/  cleanup_task ; 
 int FUNC2 (void**) ; 
 TYPE_2__ gmap_next ; 
 int /*<<< orphan*/  gmap_tree_head ; 
 struct gntdev_gmap* FUNC3 (struct per_user_data*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct per_user_data*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  taskqueue_thread ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC10(struct ioctl_gntdev_unmap_grant_ref *arg)
{
	int error;
	struct gntdev_gmap *gmap;
	struct per_user_data *priv_user;

	error = FUNC2((void**) &priv_user);
	if (error != 0)
		return (EINVAL);

	gmap = FUNC3(priv_user, arg->index, arg->count);
	if (gmap == NULL) {
		FUNC4(LOG_ERR, "Can't find requested grant-map.");
		return (EINVAL);
	}

	FUNC5(&priv_user->user_data_lock);
	FUNC5(&cleanup_data.to_kill_gmaps_mtx);
	FUNC0(gmap_tree_head, &priv_user->gmap_tree, gmap);
	FUNC1(&cleanup_data.to_kill_gmaps, gmap, gmap_next.list);
	FUNC6(&cleanup_data.to_kill_gmaps_mtx);
	FUNC6(&priv_user->user_data_lock);
	
	if (gmap->map)
		FUNC9(gmap->map->mem);

	FUNC8(taskqueue_thread, &cleanup_task);
	FUNC7(priv_user, arg->count, arg->index);
	
	return (0);
}