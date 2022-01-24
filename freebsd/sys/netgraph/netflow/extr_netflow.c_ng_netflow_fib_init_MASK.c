#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct fib_export {int dummy; } ;
typedef  TYPE_1__* priv_p ;
typedef  TYPE_2__* fib_export_p ;
struct TYPE_11__ {int fib; int domain_id; int /*<<< orphan*/  export9_mtx; int /*<<< orphan*/  export_mtx; } ;
struct TYPE_10__ {int /*<<< orphan*/  nfinfo_alloc_fibs; int /*<<< orphan*/ * fib_data; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int,TYPE_2__*,TYPE_2__*) ; 
 int ENOMEM ; 
 int /*<<< orphan*/  KTR_NET ; 
 int /*<<< orphan*/  MTX_DEF ; 
 int /*<<< orphan*/  M_NETGRAPH ; 
 int M_NOWAIT ; 
 int M_ZERO ; 
 scalar_t__ FUNC2 (uintptr_t volatile*,uintptr_t,uintptr_t) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC4 (int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC7 (TYPE_1__*,int) ; 

int
FUNC8(priv_p priv, int fib)
{
	fib_export_p	fe = FUNC7(priv, fib);

	FUNC0(KTR_NET, "ng_netflow(): fib init: %d", fib);

	if (fe != NULL)
		return (0);

	if ((fe = FUNC4(sizeof(struct fib_export), M_NETGRAPH,
	    M_NOWAIT | M_ZERO)) == NULL)
		return (ENOMEM);

	FUNC6(&fe->export_mtx, "export dgram lock", NULL, MTX_DEF);
	FUNC6(&fe->export9_mtx, "export9 dgram lock", NULL, MTX_DEF);
	fe->fib = fib;
	fe->domain_id = fib;

	if (FUNC2((volatile uintptr_t *)&priv->fib_data[fib],
	    (uintptr_t)NULL, (uintptr_t)fe) == 0) {
		/* FIB already set up by other ISR */
		FUNC1(KTR_NET, "ng_netflow(): fib init: %d setup %p but got %p",
		    fib, fe, FUNC7(priv, fib));
		FUNC5(&fe->export_mtx);
		FUNC5(&fe->export9_mtx);
		FUNC3(fe, M_NETGRAPH);
	} else {
		/* Increase counter for statistics */
		FUNC1(KTR_NET, "ng_netflow(): fib %d setup to %p (%p)",
		    fib, fe, FUNC7(priv, fib));
		priv->nfinfo_alloc_fibs++;
	}
	
	return (0);
}