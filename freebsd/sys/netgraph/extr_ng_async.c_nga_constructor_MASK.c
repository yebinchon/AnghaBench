#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_2__* sc_p ;
typedef  int /*<<< orphan*/  node_p ;
struct TYPE_4__ {void* amru; void* smru; int /*<<< orphan*/  accm; } ;
struct TYPE_5__ {int /*<<< orphan*/  node; TYPE_1__ cfg; void* sbuf; void* abuf; int /*<<< orphan*/  amode; } ;

/* Variables and functions */
 int FUNC0 (void*) ; 
 int /*<<< orphan*/  MODE_HUNT ; 
 int /*<<< orphan*/  M_NETGRAPH_ASYNC ; 
 int M_WAITOK ; 
 int M_ZERO ; 
 void* NG_ASYNC_DEFAULT_MRU ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,TYPE_2__*) ; 
 int FUNC2 (void*) ; 
 void* FUNC3 (int,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int
FUNC4(node_p node)
{
	sc_p sc;

	sc = FUNC3(sizeof(*sc), M_NETGRAPH_ASYNC, M_WAITOK | M_ZERO);
	sc->amode = MODE_HUNT;
	sc->cfg.accm = ~0;
	sc->cfg.amru = NG_ASYNC_DEFAULT_MRU;
	sc->cfg.smru = NG_ASYNC_DEFAULT_MRU;
	sc->abuf = FUNC3(FUNC0(sc->cfg.smru),
	    M_NETGRAPH_ASYNC, M_WAITOK);
	sc->sbuf = FUNC3(FUNC2(sc->cfg.amru),
	    M_NETGRAPH_ASYNC, M_WAITOK);
	FUNC1(node, sc);
	sc->node = node;
	return (0);
}