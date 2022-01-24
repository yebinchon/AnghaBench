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
struct resource_map {scalar_t__ r_size; int /*<<< orphan*/  r_vaddr; int /*<<< orphan*/  r_bushandle; int /*<<< orphan*/  r_bustag; } ;
struct resource {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 scalar_t__ FUNC1 (struct resource*) ; 
 int /*<<< orphan*/  FUNC2 (struct resource*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct resource*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct resource*,int /*<<< orphan*/ ) ; 

void
FUNC5(struct resource *r, struct resource_map *map)
{

	FUNC0(FUNC1(r) == map->r_size,
	    ("rman_set_mapping: size mismatch"));
	FUNC3(r, map->r_bustag);
	FUNC2(r, map->r_bushandle);
	FUNC4(r, map->r_vaddr);
}