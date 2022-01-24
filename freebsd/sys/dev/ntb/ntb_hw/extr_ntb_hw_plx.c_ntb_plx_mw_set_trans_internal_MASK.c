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
typedef  int uint64_t ;
typedef  int uint32_t ;
struct ntb_plx_softc {unsigned int b2b_mw; int b2b_off; unsigned int split; int alut; int ntx; int /*<<< orphan*/  conf_res; scalar_t__ link; struct ntb_plx_mw_info* mw_info; } ;
struct ntb_plx_mw_info {int mw_bar; int mw_size; TYPE_1__* splits; scalar_t__ mw_64bit; } ;
typedef  int /*<<< orphan*/  device_t ;
struct TYPE_2__ {int mw_xlat_size; int mw_xlat_addr; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (struct ntb_plx_softc*,int,int) ; 
 int FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct ntb_plx_softc*,int,int) ; 
 int UINT64_MAX ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int,int) ; 
 struct ntb_plx_softc* FUNC4 (int /*<<< orphan*/ ) ; 
 long long FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 

__attribute__((used)) static int
FUNC7(device_t dev, unsigned mw_idx)
{
	struct ntb_plx_softc *sc = FUNC4(dev);
	struct ntb_plx_mw_info *mw;
	uint64_t addr, eaddr, off, size, bsize, esize, val64;
	uint32_t val;
	unsigned i, sp, split;

	mw = &sc->mw_info[mw_idx];
	off = (mw_idx == sc->b2b_mw) ? sc->b2b_off : 0;
	split = (mw->mw_bar == 2) ? sc->split : 0;

	/* Get BAR size.  In case of split or B2RP we can't change it. */
	if (split || sc->b2b_mw < 0) {
		bsize = mw->mw_size - off;
	} else {
		bsize = mw->splits[0].mw_xlat_size;
		if (!FUNC6(bsize))
			bsize = 1LL << FUNC5(bsize);
		if (bsize > 0 && bsize < 1024 * 1024)
			bsize = 1024 * 1024;
	}

	/*
	 * While for B2B we can set any BAR size on a link side, for shared
	 * window we can't go above preconfigured size due to BAR address
	 * alignment requirements.
	 */
	if ((off & (bsize - 1)) != 0)
		return (EINVAL);

	/* In B2B mode set Link Interface BAR size/address. */
	if (sc->b2b_mw >= 0 && mw->mw_64bit) {
		val64 = 0;
		if (bsize > 0)
			val64 = (~(bsize - 1) & ~0xfffff);
		val64 |= 0xc;
		FUNC2(sc, 0xe8 + (mw->mw_bar - 2) * 4, val64);
		FUNC2(sc, 0xe8 + (mw->mw_bar - 2) * 4 + 4, val64 >> 32);

		val64 = 0x2000000000000000 * mw->mw_bar + off;
		FUNC2(sc, FUNC1(mw->mw_bar), val64);
		FUNC2(sc, FUNC1(mw->mw_bar) + 4, val64 >> 32);
	} else if (sc->b2b_mw >= 0) {
		val = 0;
		if (bsize > 0)
			val = (~(bsize - 1) & ~0xfffff);
		FUNC2(sc, 0xe8 + (mw->mw_bar - 2) * 4, val);

		val64 = 0x20000000 * mw->mw_bar + off;
		FUNC2(sc, FUNC1(mw->mw_bar), val64);
	}

	/* Set BARs address translation */
	addr = split ? UINT64_MAX : mw->splits[0].mw_xlat_addr;
	if (mw->mw_64bit) {
		FUNC2(sc, 0xc3c + (mw->mw_bar - 2) * 4, addr);
		FUNC2(sc, 0xc3c + (mw->mw_bar - 2) * 4 + 4, addr >> 32);
	} else {
		FUNC2(sc, 0xc3c + (mw->mw_bar - 2) * 4, addr);
	}

	/* Configure and enable A-LUT if we need it. */
	size = split ? 0 : mw->splits[0].mw_xlat_size;
	if (sc->alut && mw->mw_bar == 2 && (sc->split > 0 ||
	    ((addr & (bsize - 1)) != 0 || size != bsize))) {
		esize = bsize / (128 * sc->alut);
		for (i = sp = 0; i < 128 * sc->alut; i++) {
			if (i % (128 * sc->alut >> sc->split) == 0) {
				eaddr = addr = mw->splits[sp].mw_xlat_addr;
				size = mw->splits[sp++].mw_xlat_size;
			}
			val = sc->link ? 0 : 1;
			if (sc->alut == 1)
				val += 2 * sc->ntx;
			val *= 0x1000 * sc->alut;
			val += 0x38000 + i * 4 + (i >= 128 ? 0x0e00 : 0);
			FUNC3(sc->conf_res, val, eaddr);
			FUNC3(sc->conf_res, val + 0x400, eaddr >> 32);
			FUNC3(sc->conf_res, val + 0x800,
			    (eaddr < addr + size) ? 0x3 : 0);
			eaddr += esize;
		}
		FUNC0(sc, 0xc94, 0x10000000);
	} else if (sc->alut && mw->mw_bar == 2)
		FUNC0(sc, 0xc94, 0);

	return (0);
}