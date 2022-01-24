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
typedef  int /*<<< orphan*/  uint64_t ;
typedef  scalar_t__ uint32_t ;
struct per_user_data {int /*<<< orphan*/  user_data_lock; int /*<<< orphan*/  gmap_tree; } ;
struct gntdev_gmap {scalar_t__ count; int /*<<< orphan*/  file_index; } ;

/* Variables and functions */
 struct gntdev_gmap* FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct gntdev_gmap*) ; 
 int /*<<< orphan*/  gmap_tree_head ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static struct gntdev_gmap*
FUNC3(struct per_user_data *priv_user,
	uint64_t index, uint32_t count)
{
	struct gntdev_gmap find_gmap, *gmap;

	find_gmap.file_index = index;

	FUNC1(&priv_user->user_data_lock);
	gmap = FUNC0(gmap_tree_head, &priv_user->gmap_tree, &find_gmap);
	FUNC2(&priv_user->user_data_lock);

	if (gmap != NULL && gmap->count == count)
		return (gmap);
	return (NULL);
}