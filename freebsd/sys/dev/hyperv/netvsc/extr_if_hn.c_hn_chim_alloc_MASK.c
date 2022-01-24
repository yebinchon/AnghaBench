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
typedef  int /*<<< orphan*/  u_long ;
struct hn_softc {int hn_chim_bmap_cnt; int hn_chim_cnt; int /*<<< orphan*/ * hn_chim_bmap; } ;

/* Variables and functions */
 int HN_NVS_CHIM_IDX_INVALID ; 
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int LONG_BIT ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static __inline uint32_t
FUNC3(struct hn_softc *sc)
{
	int i, bmap_cnt = sc->hn_chim_bmap_cnt;
	u_long *bmap = sc->hn_chim_bmap;
	uint32_t ret = HN_NVS_CHIM_IDX_INVALID;

	for (i = 0; i < bmap_cnt; ++i) {
		int idx;

		idx = FUNC2(~bmap[i]);
		if (idx == 0)
			continue;

		--idx; /* ffsl is 1-based */
		FUNC0(i * LONG_BIT + idx < sc->hn_chim_cnt,
		    ("invalid i %d and idx %d", i, idx));

		if (FUNC1(&bmap[i], idx))
			continue;

		ret = i * LONG_BIT + idx;
		break;
	}
	return (ret);
}