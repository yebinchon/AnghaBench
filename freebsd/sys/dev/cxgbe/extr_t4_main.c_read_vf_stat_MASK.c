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
typedef  int uint64_t ;
typedef  int /*<<< orphan*/  u_int ;
typedef  int u32 ;
struct adapter {int flags; int /*<<< orphan*/  reg_lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  A_PL_INDIR_CMD ; 
 int /*<<< orphan*/  A_PL_INDIR_DATA ; 
 int IS_VF ; 
 int /*<<< orphan*/  MA_OWNED ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC5 (struct adapter*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct adapter*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static uint64_t
FUNC7(struct adapter *sc, u_int vin, int reg)
{
	u32 stats[2];

	FUNC4(&sc->reg_lock, MA_OWNED);
	if (sc->flags & IS_VF) {
		stats[0] = FUNC5(sc, FUNC0(reg));
		stats[1] = FUNC5(sc, FUNC0(reg + 4));
	} else {
		FUNC6(sc, A_PL_INDIR_CMD, FUNC2(1) |
		    FUNC3(vin) | FUNC1(FUNC0(reg)));
		stats[0] = FUNC5(sc, A_PL_INDIR_DATA);
		stats[1] = FUNC5(sc, A_PL_INDIR_DATA);
	}
	return (((uint64_t)stats[1]) << 32 | stats[0]);
}