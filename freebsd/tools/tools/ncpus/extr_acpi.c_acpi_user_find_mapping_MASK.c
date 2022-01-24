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
typedef  scalar_t__ vm_offset_t ;
struct acpi_user_mapping {scalar_t__ pa; scalar_t__ size; scalar_t__ va; } ;

/* Variables and functions */
 struct acpi_user_mapping* FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,struct acpi_user_mapping*,int /*<<< orphan*/ ) ; 
 struct acpi_user_mapping* FUNC2 (struct acpi_user_mapping*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MAP_SHARED ; 
 int /*<<< orphan*/  PROT_READ ; 
 int /*<<< orphan*/  acpi_mem_fd ; 
 int /*<<< orphan*/  FUNC3 (int,char*) ; 
 int /*<<< orphan*/  FUNC4 (int,char*) ; 
 int /*<<< orphan*/  link ; 
 struct acpi_user_mapping* FUNC5 (int) ; 
 int /*<<< orphan*/  maplist ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,size_t,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC7 (scalar_t__) ; 
 scalar_t__ FUNC8 (scalar_t__) ; 

__attribute__((used)) static struct acpi_user_mapping *
FUNC9(vm_offset_t pa, size_t size)
{
	struct	acpi_user_mapping *map;

	/* First search for an existing mapping */
	for (map = FUNC0(&maplist); map; map = FUNC2(map, link)) {
		if (map->pa <= pa && map->size >= pa + size - map->pa)
			return (map);
	}

	/* Then create a new one */
	size = FUNC7(pa + size) - FUNC8(pa);
	pa = FUNC8(pa);
	map = FUNC5(sizeof(struct acpi_user_mapping));
	if (!map)
		FUNC4(1, "out of memory");
	map->pa = pa;
	map->va = FUNC6(0, size, PROT_READ, MAP_SHARED, acpi_mem_fd, pa);
	map->size = size;
	if ((intptr_t) map->va == -1)
		FUNC3(1, "can't map address");
	FUNC1(&maplist, map, link);

	return (map);
}