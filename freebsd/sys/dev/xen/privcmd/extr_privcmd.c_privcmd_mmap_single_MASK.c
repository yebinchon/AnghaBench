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
typedef  int /*<<< orphan*/  vm_size_t ;
typedef  int /*<<< orphan*/  vm_ooffset_t ;
typedef  int /*<<< orphan*/ * vm_object_t ;
struct privcmd_map {int /*<<< orphan*/ * mem; int /*<<< orphan*/ * pseudo_phys_res; scalar_t__ pseudo_phys_res_id; int /*<<< orphan*/  phys_base_addr; int /*<<< orphan*/  size; } ;
struct cdev {int dummy; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  M_PRIVCMD ; 
 int M_WAITOK ; 
 int M_ZERO ; 
 int /*<<< orphan*/  OBJT_MGTDEVICE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC1 (struct privcmd_map*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct privcmd_map*,int /*<<< orphan*/ ) ; 
 struct privcmd_map* FUNC3 (int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  privcmd_dev ; 
 int /*<<< orphan*/  privcmd_pg_ops ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ ,scalar_t__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC7(struct cdev *cdev, vm_ooffset_t *offset, vm_size_t size,
    vm_object_t *object, int nprot)
{
	struct privcmd_map *map;

	map = FUNC3(sizeof(*map), M_PRIVCMD, M_WAITOK | M_ZERO);

	map->size = FUNC0(size);
	map->pseudo_phys_res_id = 0;

	map->pseudo_phys_res = FUNC5(privcmd_dev,
	    &map->pseudo_phys_res_id, size);
	if (map->pseudo_phys_res == NULL) {
		FUNC2(map, M_PRIVCMD);
		return (ENOMEM);
	}

	map->phys_base_addr = FUNC4(map->pseudo_phys_res);
	map->mem = FUNC1(map, OBJT_MGTDEVICE, &privcmd_pg_ops,
	    size, nprot, *offset, NULL);
	if (map->mem == NULL) {
		FUNC6(privcmd_dev, map->pseudo_phys_res_id,
		    map->pseudo_phys_res);
		FUNC2(map, M_PRIVCMD);
		return (ENOMEM);
	}

	*object = map->mem;

	return (0);
}