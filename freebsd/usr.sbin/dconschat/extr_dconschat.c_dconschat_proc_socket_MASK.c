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
struct kevent {scalar_t__ ident; scalar_t__ udata; } ;
struct dcons_state {int /*<<< orphan*/  to; int /*<<< orphan*/  kq; } ;
struct dcons_port {scalar_t__ s; } ;

/* Variables and functions */
 int NEVENT ; 
 int /*<<< orphan*/  FUNC0 (struct dcons_state*,struct dcons_port*) ; 
 int /*<<< orphan*/  FUNC1 (struct dcons_state*,struct dcons_port*) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct kevent*,int,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC3(struct dcons_state *dc)
{
	struct kevent elist[NEVENT], *e;
	int i, n;
	struct dcons_port *p;

	n = FUNC2(dc->kq, NULL, 0, elist, NEVENT, &dc->to);
	for (i = 0; i < n; i ++) {
		e = &elist[i];
		p = (struct dcons_port *)e->udata;
		if (e->ident == p->s) {
			FUNC0(dc, p);
		} else {
			FUNC1(dc, p);
		}
	}
	return(0);
}