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
struct filter_entry {int /*<<< orphan*/ * smt; int /*<<< orphan*/ * l2te; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC2(struct filter_entry *f)
{

	if (f->l2te) {
		FUNC0(f->l2te);
		f->l2te = NULL;
	}
	if (f->smt) {
		FUNC1(f->smt);
		f->smt = NULL;
	}
}