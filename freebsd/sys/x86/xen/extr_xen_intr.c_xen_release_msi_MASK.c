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
struct xenisrc {int /*<<< orphan*/  xi_pirq; } ;
struct physdev_unmap_pirq {int /*<<< orphan*/  pirq; } ;

/* Variables and functions */
 int ENXIO ; 
 int FUNC0 (int /*<<< orphan*/ ,struct physdev_unmap_pirq*) ; 
 int /*<<< orphan*/  PHYSDEVOP_unmap_pirq ; 
 scalar_t__ FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct xenisrc*) ; 

int
FUNC3(int vector)
{
	struct physdev_unmap_pirq unmap;
	struct xenisrc *isrc;
	int ret;

	isrc = (struct xenisrc *)FUNC1(vector);
	if (isrc == NULL)
		return (ENXIO);

	unmap.pirq = isrc->xi_pirq;
	ret = FUNC0(PHYSDEVOP_unmap_pirq, &unmap);
	if (ret != 0)
		return (ret);

	FUNC2(isrc);

	return (0);
}