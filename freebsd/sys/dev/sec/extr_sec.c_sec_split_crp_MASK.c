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
struct cryptop {struct cryptodesc* crp_desc; } ;
struct cryptodesc {int /*<<< orphan*/  crd_alg; struct cryptodesc* crd_next; } ;

/* Variables and functions */
 int EINVAL ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC1(struct cryptop *crp, struct cryptodesc **enc,
    struct cryptodesc **mac)
{
	struct cryptodesc *e, *m, *t;

	e = crp->crp_desc;
	m = e->crd_next;

	/* We can haldle only two operations */
	if (m && m->crd_next)
		return (EINVAL);

	if (FUNC0(e->crd_alg)) {
		t = m;
		m = e;
		e = t;
	}

	if (m && !FUNC0(m->crd_alg))
		return (EINVAL);

	*enc = e;
	*mac = m;

	return (0);
}