#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_2__* xxx_p ;
typedef  int /*<<< orphan*/  node_p ;
struct TYPE_6__ {int /*<<< orphan*/  node; TYPE_1__* channel; } ;
struct TYPE_5__ {int dlci; int channel; } ;

/* Variables and functions */
 int /*<<< orphan*/  M_NETGRAPH ; 
 int M_WAITOK ; 
 int M_ZERO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,TYPE_2__*) ; 
 int XXX_NUM_DLCIS ; 
 TYPE_2__* FUNC1 (int,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int
FUNC2(node_p node)
{
	xxx_p privdata;
	int i;

	/* Initialize private descriptor */
	privdata = FUNC1(sizeof(*privdata), M_NETGRAPH, M_WAITOK | M_ZERO);
	for (i = 0; i < XXX_NUM_DLCIS; i++) {
		privdata->channel[i].dlci = -2;
		privdata->channel[i].channel = i;
	}

	/* Link structs together; this counts as our one reference to *nodep */
	FUNC0(node, privdata);
	privdata->node = node;
	return (0);
}