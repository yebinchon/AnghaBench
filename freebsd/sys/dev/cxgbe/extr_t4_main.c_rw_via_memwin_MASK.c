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
typedef  int uint32_t ;
struct memwin {int mw_curpos; int mw_aperture; int mw_base; int /*<<< orphan*/  mw_lock; } ;
struct adapter {struct memwin* memwin; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int NUM_MEMWIN ; 
 int /*<<< orphan*/  RA_RLOCKED ; 
 int /*<<< orphan*/  RA_WLOCKED ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (struct adapter*,int,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int FUNC10 (struct adapter*,int) ; 
 int /*<<< orphan*/  FUNC11 (struct adapter*,int,int /*<<< orphan*/ ) ; 

int
FUNC12(struct adapter *sc, int idx, uint32_t addr, uint32_t *val,
    int len, int rw)
{
	struct memwin *mw;
	uint32_t mw_end, v;

	FUNC0(idx >= 0 && idx < NUM_MEMWIN);

	/* Memory can only be accessed in naturally aligned 4 byte units */
	if (addr & 3 || len & 3 || len <= 0)
		return (EINVAL);

	mw = &sc->memwin[idx];
	while (len > 0) {
		FUNC6(&mw->mw_lock);
		mw_end = mw->mw_curpos + mw->mw_aperture;
		if (addr >= mw_end || addr < mw->mw_curpos) {
			/* Will need to reposition the window */
			if (!FUNC8(&mw->mw_lock)) {
				FUNC7(&mw->mw_lock);
				FUNC9(&mw->mw_lock);
			}
			FUNC4(&mw->mw_lock, RA_WLOCKED);
			FUNC3(sc, idx, addr);
			FUNC5(&mw->mw_lock);
			mw_end = mw->mw_curpos + mw->mw_aperture;
		}
		FUNC4(&mw->mw_lock, RA_RLOCKED);
		while (addr < mw_end && len > 0) {
			if (rw == 0) {
				v = FUNC10(sc, mw->mw_base + addr -
				    mw->mw_curpos);
				*val++ = FUNC2(v);
			} else {
				v = *val++;
				FUNC11(sc, mw->mw_base + addr -
				    mw->mw_curpos, FUNC1(v));
			}
			addr += 4;
			len -= 4;
		}
		FUNC7(&mw->mw_lock);
	}

	return (0);
}