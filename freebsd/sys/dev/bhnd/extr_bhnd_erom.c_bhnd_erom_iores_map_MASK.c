#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct bhnd_erom_iores {int mapped_rid; int owner_rid; TYPE_1__* mapped; int /*<<< orphan*/  owner; } ;
struct bhnd_erom_io {int dummy; } ;
typedef  scalar_t__ bhnd_size_t ;
typedef  scalar_t__ bhnd_addr_t ;
struct TYPE_3__ {int /*<<< orphan*/  res; } ;

/* Variables and functions */
 scalar_t__ BHND_ADDR_MAX ; 
 int EINVAL ; 
 int ENXIO ; 
 int RF_ACTIVE ; 
 int RF_SHAREABLE ; 
 int /*<<< orphan*/  SYS_RES_MEMORY ; 
 TYPE_1__* FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*,scalar_t__,scalar_t__,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,TYPE_1__*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC4(struct bhnd_erom_io *eio, bhnd_addr_t addr,
    bhnd_size_t size)
{
	struct bhnd_erom_iores *iores;

	iores = (struct bhnd_erom_iores *)eio;

	/* Sanity check the addr/size */
	if (size == 0)
		return (EINVAL);

	if (BHND_ADDR_MAX - size < addr)
		return (EINVAL);	/* would overflow */

	/* Check for an existing mapping */
	if (iores->mapped) {
		/* If already mapped, nothing else to do */
		if (FUNC3(iores->mapped->res) == addr &&
		    FUNC2(iores->mapped->res) == size)
		{
			return (0);
		}

		/* Otherwise, we need to drop the existing mapping */
		FUNC1(iores->owner, SYS_RES_MEMORY,
		    iores->mapped_rid, iores->mapped);
		iores->mapped = NULL;
		iores->mapped_rid = -1;
	}

	/* Try to allocate the new mapping */
	iores->mapped_rid = iores->owner_rid;
	iores->mapped = FUNC0(iores->owner, SYS_RES_MEMORY,
	    &iores->mapped_rid, addr, addr+size-1, size,
	    RF_ACTIVE|RF_SHAREABLE);
	if (iores->mapped == NULL) {
		iores->mapped_rid = -1;
		return (ENXIO);
	}

	return (0);
}