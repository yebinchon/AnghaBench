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
struct ntb_plx_softc {unsigned int mw_count; struct ntb_plx_mw_info* mw_info; } ;
struct ntb_plx_mw_info {TYPE_1__* splits; int /*<<< orphan*/  mw_64bit; } ;
typedef  int /*<<< orphan*/  device_t ;
typedef  size_t bus_addr_t ;
struct TYPE_2__ {size_t mw_xlat_addr; size_t mw_xlat_size; } ;

/* Variables and functions */
 int EINVAL ; 
 int ERANGE ; 
 size_t UINT32_MAX ; 
 struct ntb_plx_softc* FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ,unsigned int) ; 
 unsigned int FUNC2 (struct ntb_plx_softc*,unsigned int,unsigned int*) ; 

__attribute__((used)) static int
FUNC3(device_t dev, unsigned mw_idx, bus_addr_t addr, size_t size)
{
	struct ntb_plx_softc *sc = FUNC0(dev);
	struct ntb_plx_mw_info *mw;
	unsigned sp;

	mw_idx = FUNC2(sc, mw_idx, &sp);
	if (mw_idx >= sc->mw_count)
		return (EINVAL);
	mw = &sc->mw_info[mw_idx];
	if (!mw->mw_64bit &&
	    ((addr & UINT32_MAX) != addr ||
	     ((addr + size) & UINT32_MAX) != (addr + size)))
		return (ERANGE);
	mw->splits[sp].mw_xlat_addr = addr;
	mw->splits[sp].mw_xlat_size = size;
	return (FUNC1(dev, mw_idx));
}