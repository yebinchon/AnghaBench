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
struct resource {int dummy; } ;
struct an_softc {int mem_aux_rid; int mem_aux_used; struct resource* mem_aux_res; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int ENOENT ; 
 int /*<<< orphan*/  RF_ACTIVE ; 
 int /*<<< orphan*/  SYS_RES_MEMORY ; 
 struct resource* FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*,int,int /*<<< orphan*/ ) ; 
 struct an_softc* FUNC1 (int /*<<< orphan*/ ) ; 

int FUNC2(device_t dev, int rid, int size)
{
	struct an_softc *sc = FUNC1(dev);
	struct resource *res;

	res = FUNC0(dev, SYS_RES_MEMORY, &rid,
					  size, RF_ACTIVE);
	if (res) {
		sc->mem_aux_rid = rid;
		sc->mem_aux_res = res;
		sc->mem_aux_used = size;
		return (0);
	} else {
		return (ENOENT);
	}
}