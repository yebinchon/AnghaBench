#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  port_t ;
struct TYPE_3__ {long end; long start; } ;
typedef  TYPE_1__ cr_dat_tst_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 unsigned char BCR0800_TCK ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 unsigned char BCR2_TDI ; 
 unsigned char BCR2_TMS ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 unsigned char BSR800_LERR ; 
 unsigned char FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,unsigned char) ; 

int FUNC6 (port_t port, const unsigned char *firmware, long bits,
	const cr_dat_tst_t *tst)
{
	unsigned char cr2, sr;
	long i, n, maxn = (bits + 7) / 8;
	int v, b;

	FUNC4 (FUNC2(port));
	for (i=n=0; n<maxn; ++n) {
		v = ((firmware[n] ^ ' ') << 1) | (firmware[n] >> 7 & 1);
		for (b=0; b<7; b+=2, i+=2) {
			if (i >= bits)
				break;
			cr2 = 0;
			if (v >> b & 1) cr2 |= BCR2_TMS;
			if (v >> b & 2) cr2 |= BCR2_TDI;
			FUNC5 (FUNC1(port), cr2);
			sr = FUNC4 (FUNC3(port));
			FUNC5 (FUNC0(port), BCR0800_TCK);
			FUNC5 (FUNC0(port), 0);
			if (i >= tst->end)
				++tst;
			if (i >= tst->start && (sr & BSR800_LERR))
				return (0);
		}
	}
	return (1);
}