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
typedef  int vm_size_t ;
struct agp_softc {int as_maxmem; int as_allocated; int /*<<< orphan*/  as_memory; int /*<<< orphan*/  as_nextid; } ;
struct agp_memory {int am_size; scalar_t__ am_is_bound; scalar_t__ am_offset; scalar_t__ am_physical; int /*<<< orphan*/  am_obj; scalar_t__ am_type; scalar_t__ am_id; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int AGP_PAGE_SIZE ; 
 int /*<<< orphan*/  M_AGP ; 
 int /*<<< orphan*/  M_WAITOK ; 
 int /*<<< orphan*/  OBJT_DEFAULT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,struct agp_memory*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  am_link ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 struct agp_softc* FUNC2 (int /*<<< orphan*/ ) ; 
 struct agp_memory* FUNC3 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*,int) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

struct agp_memory *
FUNC7(device_t dev, int type, vm_size_t size)
{
	struct agp_softc *sc = FUNC2(dev);
	struct agp_memory *mem;

	if ((size & (AGP_PAGE_SIZE - 1)) != 0)
		return 0;

	if (size > sc->as_maxmem - sc->as_allocated)
		return 0;

	if (type != 0) {
		FUNC4("agp_generic_alloc_memory: unsupported type %d\n",
		       type);
		return 0;
	}

	mem = FUNC3(sizeof *mem, M_AGP, M_WAITOK);
	mem->am_id = sc->as_nextid++;
	mem->am_size = size;
	mem->am_type = 0;
	mem->am_obj = FUNC6(OBJT_DEFAULT, FUNC1(FUNC5(size)));
	mem->am_physical = 0;
	mem->am_offset = 0;
	mem->am_is_bound = 0;
	FUNC0(&sc->as_memory, mem, am_link);
	sc->as_allocated += size;

	return mem;
}