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
typedef  int /*<<< orphan*/  b ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int,int) ; 
 int FUNC3 (char*,int,char*,int,double,...) ; 

void
FUNC4(double f, int l, int lc, int w, int d, int nz)
{
	int snr;
	char b[128];

	FUNC2(l, lc);
#ifdef DEBUG
		while (--w >= 0)
			addch('*');
		return;
#endif
	if (nz && f == 0.0) {
		while (--w >= 0)
			FUNC0(' ');
		return;
	}
	snr = FUNC3(b, sizeof(b), "%*.*f", w, d, f);
	if (snr != w)
		snr = FUNC3(b, sizeof(b), "%*.0f", w, f);
	if (snr != w)
		snr = FUNC3(b, sizeof(b), "%*.0fk", w - 1, f / 1000);
	if (snr != w)
		snr = FUNC3(b, sizeof(b), "%*.0fM", w - 1, f / 1000000);
	if (snr != w) {
		while (--w >= 0)
			FUNC0('*');
		return;
	}
	FUNC1(b);
}