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
typedef  unsigned int vm_offset_t ;
typedef  int /*<<< orphan*/  vm_memattr_t ;
typedef  unsigned int uint64_t ;
struct ntb_plx_softc {unsigned int mw_count; unsigned int b2b_mw; scalar_t__ b2b_off; unsigned int split; struct ntb_plx_mw_info* mw_info; } ;
struct ntb_plx_mw_info {int mw_bar; unsigned int mw_size; TYPE_1__* splits; scalar_t__ mw_vbase; } ;
typedef  int /*<<< orphan*/  device_t ;
struct TYPE_2__ {int /*<<< orphan*/  mw_map_mode; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 struct ntb_plx_softc* FUNC1 (int /*<<< orphan*/ ) ; 
 unsigned int FUNC2 (struct ntb_plx_softc*,unsigned int,unsigned int*) ; 
 int FUNC3 (unsigned int,unsigned int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC4(device_t dev, unsigned mw_idx, vm_memattr_t mode)
{
	struct ntb_plx_softc *sc = FUNC1(dev);
	struct ntb_plx_mw_info *mw;
	uint64_t off, ss;
	int rc;
	unsigned sp, split;

	mw_idx = FUNC2(sc, mw_idx, &sp);
	if (mw_idx >= sc->mw_count)
		return (EINVAL);
	mw = &sc->mw_info[mw_idx];
	if (mw->splits[sp].mw_map_mode == mode)
		return (0);

	off = 0;
	if (mw_idx == sc->b2b_mw) {
		FUNC0(sc->b2b_off != 0,
		    ("user shouldn't get non-shared b2b mw"));
		off = sc->b2b_off;
	}

	split = (mw->mw_bar == 2) ? sc->split : 0;
	ss = (mw->mw_size - off) >> split;
	rc = FUNC3((vm_offset_t)mw->mw_vbase + off + ss * sp,
	    ss, mode);
	if (rc == 0)
		mw->splits[sp].mw_map_mode = mode;
	return (rc);
}