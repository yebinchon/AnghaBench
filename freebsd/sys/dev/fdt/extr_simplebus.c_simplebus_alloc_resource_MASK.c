#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u_int ;
struct simplebus_softc {int nranges; TYPE_1__* ranges; } ;
struct simplebus_devinfo {int /*<<< orphan*/  rl; } ;
struct resource_list_entry {scalar_t__ start; scalar_t__ end; scalar_t__ count; } ;
struct resource {int dummy; } ;
typedef  scalar_t__ rman_res_t ;
typedef  int /*<<< orphan*/  device_t ;
struct TYPE_2__ {scalar_t__ bus; scalar_t__ size; scalar_t__ host; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (scalar_t__,scalar_t__) ; 
 int SYS_RES_IOPORT ; 
 int SYS_RES_MEMORY ; 
 scalar_t__ bootverbose ; 
 struct resource* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int*,scalar_t__,scalar_t__,scalar_t__,int /*<<< orphan*/ ) ; 
 struct simplebus_devinfo* FUNC2 (int /*<<< orphan*/ ) ; 
 struct simplebus_softc* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,scalar_t__,scalar_t__) ; 
 struct resource_list_entry* FUNC5 (int /*<<< orphan*/ *,int,int) ; 

__attribute__((used)) static struct resource *
FUNC6(device_t bus, device_t child, int type, int *rid,
    rman_res_t start, rman_res_t end, rman_res_t count, u_int flags)
{
	struct simplebus_softc *sc;
	struct simplebus_devinfo *di;
	struct resource_list_entry *rle;
	int j;

	sc = FUNC3(bus);

	/*
	 * Request for the default allocation with a given rid: use resource
	 * list stored in the local device info.
	 */
	if (FUNC0(start, end)) {
		if ((di = FUNC2(child)) == NULL)
			return (NULL);

		if (type == SYS_RES_IOPORT)
			type = SYS_RES_MEMORY;

		rle = FUNC5(&di->rl, type, *rid);
		if (rle == NULL) {
			if (bootverbose)
				FUNC4(bus, "no default resources for "
				    "rid = %d, type = %d\n", *rid, type);
			return (NULL);
		}
		start = rle->start;
		end = rle->end;
		count = rle->count;
        }

	if (type == SYS_RES_MEMORY) {
		/* Remap through ranges property */
		for (j = 0; j < sc->nranges; j++) {
			if (start >= sc->ranges[j].bus && end <
			    sc->ranges[j].bus + sc->ranges[j].size) {
				start -= sc->ranges[j].bus;
				start += sc->ranges[j].host;
				end -= sc->ranges[j].bus;
				end += sc->ranges[j].host;
				break;
			}
		}
		if (j == sc->nranges && sc->nranges != 0) {
			if (bootverbose)
				FUNC4(bus, "Could not map resource "
				    "%#jx-%#jx\n", start, end);

			return (NULL);
		}
	}

	return (FUNC1(bus, child, type, rid, start, end,
	    count, flags));
}