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
typedef  scalar_t__ uint16_t ;
struct TYPE_3__ {scalar_t__ rdEdge; scalar_t__ twice_rdEdgePower; scalar_t__ flag; } ;
typedef  TYPE_1__ RD_EDGES_POWER ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ MAX_RATE_POWER ; 
 int NUM_EDGES ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,scalar_t__*,int,scalar_t__*,scalar_t__*) ; 

__attribute__((used)) static uint16_t
FUNC2(uint16_t channel, const RD_EDGES_POWER *pRdEdgesPower)
{
	/* temp array for holding edge channels */
	uint16_t tempChannelList[NUM_EDGES];
	uint16_t clo, chi, twiceMaxEdgePower;
	int i, numEdges;

	/* Get the edge power */
	for (i = 0; i < NUM_EDGES; i++) {
		if (pRdEdgesPower[i].rdEdge == 0)
			break;
		tempChannelList[i] = pRdEdgesPower[i].rdEdge;
	}
	numEdges = i;

	FUNC1(channel, tempChannelList,
		numEdges, &clo, &chi);
	/* Get the index for the lower channel */
	for (i = 0; i < numEdges && clo != tempChannelList[i]; i++)
		;
	/* Is lower channel ever outside the rdEdge? */
	FUNC0(i != numEdges);

	if ((clo == chi && clo == channel) || (pRdEdgesPower[i].flag)) {
		/* 
		 * If there's an exact channel match or an inband flag set
		 * on the lower channel use the given rdEdgePower 
		 */
		twiceMaxEdgePower = pRdEdgesPower[i].twice_rdEdgePower;
		FUNC0(twiceMaxEdgePower > 0);
	} else
		twiceMaxEdgePower = MAX_RATE_POWER;
	return twiceMaxEdgePower;
}