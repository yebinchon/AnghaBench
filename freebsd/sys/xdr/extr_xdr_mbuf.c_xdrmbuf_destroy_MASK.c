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
struct mbuf {int dummy; } ;
struct TYPE_3__ {scalar_t__ x_op; int /*<<< orphan*/ * x_private; int /*<<< orphan*/ * x_base; } ;
typedef  TYPE_1__ XDR ;

/* Variables and functions */
 scalar_t__ XDR_DECODE ; 
 int /*<<< orphan*/  FUNC0 (struct mbuf*) ; 

__attribute__((used)) static void
FUNC1(XDR *xdrs)
{

	if (xdrs->x_op == XDR_DECODE && xdrs->x_base) {
		FUNC0((struct mbuf *) xdrs->x_base);
		xdrs->x_base = NULL;
		xdrs->x_private = NULL;
	}
}