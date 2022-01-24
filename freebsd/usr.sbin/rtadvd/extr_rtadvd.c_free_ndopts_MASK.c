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
union nd_opt {int /*<<< orphan*/  opt_list; } ;
struct nd_optlist {int dummy; } ;

/* Variables and functions */
 struct nd_optlist* FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,struct nd_optlist*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct nd_optlist*) ; 
 int /*<<< orphan*/  nol_next ; 

__attribute__((used)) static void
FUNC3(union nd_opt *ndopts)
{
	struct nd_optlist *nol;

	while ((nol = FUNC0(&ndopts->opt_list)) != NULL) {
		FUNC1(&ndopts->opt_list, nol, nol_next);
		FUNC2(nol);
	}
}