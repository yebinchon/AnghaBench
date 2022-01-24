#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_4__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct tty {int dummy; } ;
typedef  TYPE_1__* sc_p ;
typedef  int /*<<< orphan*/  node_p ;
struct TYPE_6__ {int /*<<< orphan*/  ifq_mtx; } ;
struct TYPE_5__ {int /*<<< orphan*/  node; TYPE_4__ outq; struct tty* tp; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_4__*) ; 
 int /*<<< orphan*/  M_NETGRAPH ; 
 TYPE_1__* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__* const,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct tty*) ; 
 int /*<<< orphan*/  FUNC6 (struct tty*) ; 

__attribute__((used)) static int
FUNC7(node_p node)
{
	const sc_p sc = FUNC1(node);
	struct tty *tp;

	tp = sc->tp;
	if (tp != NULL) {
		FUNC5(tp);
		FUNC6(tp);
	}
	/* Free resources */
	FUNC0(&sc->outq);
	FUNC4(&(sc)->outq.ifq_mtx);
	FUNC2(sc->node);
	FUNC3(sc, M_NETGRAPH);

	return (0);
}