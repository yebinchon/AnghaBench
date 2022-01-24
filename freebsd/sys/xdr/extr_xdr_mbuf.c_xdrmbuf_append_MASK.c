#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct mbuf {int /*<<< orphan*/  m_len; struct mbuf* m_next; } ;
struct TYPE_3__ {scalar_t__ x_op; int /*<<< orphan*/  x_handy; struct mbuf* x_private; int /*<<< orphan*/ * x_ops; } ;
typedef  TYPE_1__ XDR ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 scalar_t__ XDR_ENCODE ; 
 int /*<<< orphan*/  FUNC1 (struct mbuf*) ; 
 struct mbuf* FUNC2 (struct mbuf*) ; 
 scalar_t__ FUNC3 (struct mbuf*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  xdrmbuf_ops ; 

void
FUNC4(XDR *xdrs, struct mbuf *madd)
{
	struct mbuf *m;

	FUNC0(xdrs->x_ops == &xdrmbuf_ops && xdrs->x_op == XDR_ENCODE,
	    ("xdrmbuf_append: invalid XDR stream"));

	if (FUNC3(madd, NULL) == 0) {
		FUNC1(madd);
		return;
	}
	
	m = (struct mbuf *) xdrs->x_private;
	m->m_next = madd;

	m = FUNC2(madd);
	xdrs->x_private = m;
	xdrs->x_handy = m->m_len;
}