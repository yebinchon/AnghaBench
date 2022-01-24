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
struct pfi_kif {scalar_t__ pfik_tzero; } ;
struct epoch_tracker {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct epoch_tracker) ; 
 int /*<<< orphan*/  FUNC1 (struct epoch_tracker) ; 
 struct pfi_kif* FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 struct pfi_kif* FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct pfi_kif*) ; 
 int /*<<< orphan*/  V_pfi_ifs ; 
 int /*<<< orphan*/  FUNC4 (struct pfi_kif*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  pfi_ifhead ; 
 scalar_t__ FUNC5 (char const*,struct pfi_kif*) ; 
 scalar_t__ time_second ; 

void
FUNC6(const char *name, struct pfi_kif *buf, int *size)
{
	struct epoch_tracker et;
	struct pfi_kif	*p, *nextp;
	int		 n = 0;

	FUNC0(et);
	for (p = FUNC2(pfi_ifhead, &V_pfi_ifs); p; p = nextp) {
		nextp = FUNC3(pfi_ifhead, &V_pfi_ifs, p);
		if (FUNC5(name, p))
			continue;
		if (*size <= n++)
			break;
		if (!p->pfik_tzero)
			p->pfik_tzero = time_second;
		FUNC4(p, buf++, sizeof(*buf));
		nextp = FUNC3(pfi_ifhead, &V_pfi_ifs, p);
	}
	*size = n;
	FUNC1(et);
}