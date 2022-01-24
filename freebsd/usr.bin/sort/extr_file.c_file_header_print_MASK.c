#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct last_printed {int /*<<< orphan*/ * str; } ;
struct file_header {TYPE_1__* si; scalar_t__ fr; } ;
struct TYPE_4__ {int /*<<< orphan*/  zflag; scalar_t__ uflag; } ;
struct TYPE_3__ {scalar_t__ str; } ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 TYPE_2__ sort_opts_vals ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,TYPE_1__**) ; 

__attribute__((used)) static void
FUNC4(struct file_header *fh, FILE *f_out, struct last_printed *lp)
{

	if (fh && fh->fr && f_out && fh->si && fh->si->str) {
		if (sort_opts_vals.uflag) {
			if ((lp->str == NULL) || (FUNC3(lp->str, &(fh->si)))) {
				FUNC2(fh->si->str, f_out, sort_opts_vals.zflag);
				if (lp->str)
					FUNC1(lp->str);
				lp->str = FUNC0(fh->si->str);
			}
		} else
			FUNC2(fh->si->str, f_out, sort_opts_vals.zflag);
	}
}