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
typedef  int /*<<< orphan*/  u_int ;
struct vmbus_softc {int /*<<< orphan*/  vmbus_mmio_res; } ;
struct resource {int dummy; } ;
typedef  int /*<<< orphan*/  rman_res_t ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 struct resource* FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int SYS_RES_MEMORY ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 struct vmbus_softc* FUNC2 (int /*<<< orphan*/ ) ; 
 struct resource* FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct resource *
FUNC4(device_t dev, device_t child, int type, int *rid,
    rman_res_t start, rman_res_t end, rman_res_t count, u_int flags)
{
	device_t parent = FUNC1(dev);
	struct resource *res;

#ifdef NEW_PCIB
	if (type == SYS_RES_MEMORY) {
		struct vmbus_softc *sc = device_get_softc(dev);

		res = pcib_host_res_alloc(&sc->vmbus_mmio_res, child, type,
		    rid, start, end, count, flags);
	} else
#endif
	{
		res = FUNC0(parent, child, type, rid, start,
		    end, count, flags);
	}

	return (res);
}