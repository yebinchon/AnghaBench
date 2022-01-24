#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  node_p ;
typedef  TYPE_1__* etf_p ;
struct TYPE_4__ {int /*<<< orphan*/  node; scalar_t__ hashtable; } ;

/* Variables and functions */
 int HASHSIZE ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  M_NETGRAPH_ETF ; 
 int M_WAITOK ; 
 int M_ZERO ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 TYPE_1__* FUNC2 (int,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int
FUNC3(node_p node)
{
	etf_p privdata;
	int i;

	/* Initialize private descriptor */
	privdata = FUNC2(sizeof(*privdata), M_NETGRAPH_ETF, M_WAITOK | M_ZERO);
	for (i = 0; i < HASHSIZE; i++) {
		FUNC0((privdata->hashtable + i));
	}

	/* Link structs together; this counts as our one reference to node */
	FUNC1(node, privdata);
	privdata->node = node;
	return (0);
}