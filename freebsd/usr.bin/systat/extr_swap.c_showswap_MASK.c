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
struct TYPE_2__ {double ksw_total; double ksw_used; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (double) ; 
 int /*<<< orphan*/  cur_dev ; 
 scalar_t__ dlen ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ hlen ; 
 TYPE_1__* kvmsw ; 
 int kvnsw ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  last_dev ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int,scalar_t__,char*) ; 
 scalar_t__ odlen ; 
 int okvnsw ; 
 scalar_t__ oulen ; 
 scalar_t__ ulen ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int,scalar_t__) ; 
 int /*<<< orphan*/  wnd ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*,scalar_t__,int /*<<< orphan*/ ) ; 

void
FUNC8(void)
{
	int count;
	int i;

	if (kvnsw != okvnsw || dlen != odlen || ulen != oulen)
		FUNC2();

	for (i = 0; i <= kvnsw; ++i) {
		if (i == kvnsw) {
			if (kvnsw == 1)
				break;
		}

		if (kvmsw[i].ksw_total == 0) {
			FUNC3(
			    wnd,
			    i + 1,
			    dlen + hlen + ulen + 1,
			    "(swap not configured)"
			);
			continue;
		}

		FUNC6(wnd, i + 1, dlen);

		FUNC7(wnd, "%*d", hlen, FUNC0(kvmsw[i].ksw_total));
		FUNC7(wnd, "%*d", ulen, FUNC0(kvmsw[i].ksw_used));

		count = 50.0 * kvmsw[i].ksw_used / kvmsw[i].ksw_total + 1;

		FUNC4(wnd, ' ');
		while (count--)
			FUNC4(wnd, 'X');
		FUNC5(wnd);
	}
	FUNC1(12, 0, 18, &cur_dev, &last_dev);
}