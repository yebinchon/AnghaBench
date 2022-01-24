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
struct cfjail {int /*<<< orphan*/ * dep; } ;
struct cfdepend {unsigned int flags; struct cfjail** j; } ;

/* Variables and functions */
 size_t DEP_FROM ; 
 size_t DEP_TO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,struct cfdepend*,int /*<<< orphan*/ ) ; 
 struct cfdepend* FUNC1 (int) ; 
 int /*<<< orphan*/ * tq ; 

__attribute__((used)) static void
FUNC2(struct cfjail *from, struct cfjail *to, unsigned flags)
{
	struct cfdepend *d;

	d = FUNC1(sizeof(struct cfdepend));
	d->flags = flags;
	d->j[DEP_FROM] = from;
	d->j[DEP_TO] = to;
	FUNC0(&from->dep[DEP_FROM], d, tq[DEP_FROM]);
	FUNC0(&to->dep[DEP_TO], d, tq[DEP_TO]);
}