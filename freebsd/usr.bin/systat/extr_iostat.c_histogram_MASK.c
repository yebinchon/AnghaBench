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
typedef  int /*<<< orphan*/  buf ;

/* Variables and functions */
 int FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 (char*,int,char*,long double) ; 
 scalar_t__ FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  wnd ; 

__attribute__((used)) static void
FUNC6(long double val, int colwidth, double scale)
{
	char buf[10];
	int k;
	int v = (int)(val * scale) + 0.5;

	k = FUNC0(v, colwidth);
	if (v > colwidth) {
		FUNC1(buf, sizeof(buf), "%5.2Lf", val);
		k -= FUNC2(buf);
		while (k--)
			FUNC3(wnd, 'X');
		FUNC4(wnd, buf);
		return;
	}
	while (k--)
		FUNC3(wnd, 'X');
	FUNC5(wnd);
}