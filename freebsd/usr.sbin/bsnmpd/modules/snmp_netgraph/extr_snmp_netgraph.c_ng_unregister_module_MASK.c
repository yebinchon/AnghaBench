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
struct msgreg {struct lmodule const* mod; } ;
struct lmodule {int dummy; } ;
struct datareg {struct lmodule const* mod; } ;

/* Variables and functions */
 struct msgreg* FUNC0 (int /*<<< orphan*/ *) ; 
 struct msgreg* FUNC1 (struct msgreg*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,struct msgreg*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  datareg ; 
 int /*<<< orphan*/  datareg_list ; 
 int /*<<< orphan*/  FUNC3 (struct msgreg*) ; 
 int /*<<< orphan*/  link ; 
 int /*<<< orphan*/  msgreg ; 
 int /*<<< orphan*/  msgreg_list ; 

void
FUNC4(const struct lmodule *mod)
{
	struct msgreg *m, *m1;
	struct datareg *d, *d1;

	m = FUNC0(&msgreg_list);
	while (m != NULL) {
		m1 = FUNC1(m, link);
		if (m->mod == mod) {
			FUNC2(&msgreg_list, m, msgreg, link);
			FUNC3(m);
		}
		m = m1;
	}

	d = FUNC0(&datareg_list);
	while (d != NULL) {
		d1 = FUNC1(d, link);
		if (d->mod == mod) {
			FUNC2(&datareg_list, d, datareg, link);
			FUNC3(d);
		}
		d = d1;
	}
}