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
typedef  int /*<<< orphan*/  uma_zone_t ;

/* Variables and functions */
#define  UMA_RECLAIM_DRAIN 130 
#define  UMA_RECLAIM_DRAIN_CPU 129 
#define  UMA_RECLAIM_TRIM 128 
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

void
FUNC4(uma_zone_t zone, int req)
{

	switch (req) {
	case UMA_RECLAIM_TRIM:
		FUNC3(zone);
		break;
	case UMA_RECLAIM_DRAIN:
		FUNC2(zone);
		break;
	case UMA_RECLAIM_DRAIN_CPU:
		FUNC1(zone);
		FUNC2(zone);
		break;
	default:
		FUNC0("unhandled reclamation request %d", req);
	}
}