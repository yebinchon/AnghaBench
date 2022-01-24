#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct xencons_priv {scalar_t__ wc; scalar_t__ wp; int /*<<< orphan*/ * wbuf; TYPE_1__* ops; } ;
struct TYPE_2__ {int (* write ) (struct xencons_priv*,int /*<<< orphan*/ *,int) ;} ;

/* Variables and functions */
 size_t FUNC0 (int) ; 
 int WBUF_SIZE ; 
 scalar_t__ FUNC1 (int) ; 
 scalar_t__ FUNC2 (int) ; 
 int FUNC3 (struct xencons_priv*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (struct xencons_priv*) ; 
 int /*<<< orphan*/  FUNC5 (struct xencons_priv*) ; 

__attribute__((used)) static void
FUNC6(struct xencons_priv *cons, int force)
{
	int        sz;

	FUNC4(cons);
	while (cons->wc != cons->wp) {
		int sent;
		sz = cons->wp - cons->wc;
		if (sz > (WBUF_SIZE - FUNC0(cons->wc)))
			sz = WBUF_SIZE - FUNC0(cons->wc);
		sent = cons->ops->write(cons, &cons->wbuf[FUNC0(cons->wc)],
		    sz);

		/*
		 * The other end may not have been initialized. Ignore
		 * the force.
		 */
		if (FUNC1(sent < 0))
			break;

		/*
		 * If force is set, spin until the console data is
		 * flushed through the domain controller.
		 */
		if (sent == 0 && FUNC2(!force))
			break;

		cons->wc += sent;
	}
	FUNC5(cons);
}