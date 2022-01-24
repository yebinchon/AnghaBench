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
struct agp_softc {int /*<<< orphan*/  as_memory; int /*<<< orphan*/  as_allocated; } ;
struct agp_memory {int /*<<< orphan*/  am_obj; scalar_t__ am_size; scalar_t__ am_is_bound; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int EBUSY ; 
 int /*<<< orphan*/  M_AGP ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,struct agp_memory*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  am_link ; 
 struct agp_softc* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct agp_memory*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

int
FUNC4(device_t dev, struct agp_memory *mem)
{
	struct agp_softc *sc = FUNC1(dev);

	if (mem->am_is_bound)
		return EBUSY;

	sc->as_allocated -= mem->am_size;
	FUNC0(&sc->as_memory, mem, am_link);
	FUNC3(mem->am_obj);
	FUNC2(mem, M_AGP);
	return 0;
}