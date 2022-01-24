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
struct resource_map {int /*<<< orphan*/  r_vaddr; int /*<<< orphan*/  r_size; int /*<<< orphan*/  r_bushandle; int /*<<< orphan*/  r_bustag; } ;
struct resource {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct resource*) ; 
 int /*<<< orphan*/  FUNC1 (struct resource*) ; 
 int /*<<< orphan*/  FUNC2 (struct resource*) ; 
 int /*<<< orphan*/  FUNC3 (struct resource*) ; 

void
FUNC4(struct resource *r, struct resource_map *map)
{

	map->r_bustag = FUNC1(r);
	map->r_bushandle = FUNC0(r);
	map->r_size = FUNC2(r);
	map->r_vaddr = FUNC3(r);
}