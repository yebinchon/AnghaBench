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
typedef  int /*<<< orphan*/  uint8_t ;
typedef  scalar_t__ uint32_t ;
typedef  struct bwi_rf_lo {scalar_t__ ctrl_hi; scalar_t__ ctrl_lo; } const bwi_rf_lo ;
struct bwi_mac {int dummy; } ;
typedef  int /*<<< orphan*/  lo_min ;
typedef  int /*<<< orphan*/  lo_base ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 struct bwi_rf_lo const FUNC1 (int,int) ; 
 int LO_ADJUST_MAX ; 
 int LO_ADJUST_MIN ; 
 int /*<<< orphan*/  FUNC2 (struct bwi_mac*,struct bwi_rf_lo const*) ; 
 int FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (struct bwi_rf_lo const*,struct bwi_rf_lo const*,int) ; 
 scalar_t__ FUNC5 (struct bwi_mac*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC6(struct bwi_mac *mac, const struct bwi_rf_lo *src_lo,
	struct bwi_rf_lo *dst_lo, uint8_t devi_ctrl)
{
#define LO_ADJUST_MIN	1
#define LO_ADJUST_MAX	8
#define LO_ADJUST(hi, lo)	{ .ctrl_hi = hi, .ctrl_lo = lo }
	static const struct bwi_rf_lo rf_lo_adjust[LO_ADJUST_MAX] = {
		LO_ADJUST(1,	1),
		LO_ADJUST(1,	0),
		LO_ADJUST(1,	-1),
		LO_ADJUST(0,	-1),
		LO_ADJUST(-1,	-1),
		LO_ADJUST(-1,	0),
		LO_ADJUST(-1,	1),
		LO_ADJUST(0,	1)
	};
#undef LO_ADJUST

	struct bwi_rf_lo lo_min;
	uint32_t devi_min;
	int found, loop_count, adjust_state;

	FUNC4(src_lo, &lo_min, sizeof(lo_min));
	FUNC2(mac, &lo_min);
	devi_min = FUNC5(mac, devi_ctrl);

	loop_count = 12;	/* XXX */
	adjust_state = 0;
	do {
		struct bwi_rf_lo lo_base;
		int i, fin;

		found = 0;
		if (adjust_state == 0) {
			i = LO_ADJUST_MIN;
			fin = LO_ADJUST_MAX;
		} else if (adjust_state % 2 == 0) {
			i = adjust_state - 1;
			fin = adjust_state + 1;
		} else {
			i = adjust_state - 2;
			fin = adjust_state + 2;
		}

		if (i < LO_ADJUST_MIN)
			i += LO_ADJUST_MAX;
		FUNC0(i <= LO_ADJUST_MAX && i >= LO_ADJUST_MIN, ("i %d", i));

		if (fin > LO_ADJUST_MAX)
			fin -= LO_ADJUST_MAX;
		FUNC0(fin <= LO_ADJUST_MAX && fin >= LO_ADJUST_MIN,
		    ("fin %d", fin));

		FUNC4(&lo_min, &lo_base, sizeof(lo_base));
		for (;;) {
			struct bwi_rf_lo lo;

			lo.ctrl_hi = lo_base.ctrl_hi +
				rf_lo_adjust[i - 1].ctrl_hi;
			lo.ctrl_lo = lo_base.ctrl_lo +
				rf_lo_adjust[i - 1].ctrl_lo;

			if (FUNC3(lo.ctrl_lo) < 9 && FUNC3(lo.ctrl_hi) < 9) {
				uint32_t devi;

				FUNC2(mac, &lo);
				devi = FUNC5(mac, devi_ctrl);
				if (devi < devi_min) {
					devi_min = devi;
					adjust_state = i;
					found = 1;
					FUNC4(&lo, &lo_min, sizeof(lo_min));
				}
			}
			if (i == fin)
				break;
			if (i == LO_ADJUST_MAX)
				i = LO_ADJUST_MIN;
			else
				++i;
		}
	} while (loop_count-- && found);

	FUNC4(&lo_min, dst_lo, sizeof(*dst_lo));

#undef LO_ADJUST_MIN
#undef LO_ADJUST_MAX
}