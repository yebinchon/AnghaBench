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
struct TYPE_3__ {scalar_t__ bChannel; int tPowerFlag; } ;
typedef  int /*<<< orphan*/  HAL_BOOL ;
typedef  TYPE_1__ CAL_CTL_EDGES ;

/* Variables and functions */
 scalar_t__ AR5416_BCHAN_UNUSED ; 
 scalar_t__ AR5416_MAX_RATE_POWER ; 
 int AR5416_NUM_BAND_EDGES ; 
 int CAL_CTL_EDGES_FLAG ; 
 int /*<<< orphan*/  CAL_CTL_EDGES_POWER ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (scalar_t__,int /*<<< orphan*/ ) ; 

uint16_t
FUNC3(uint16_t freq, CAL_CTL_EDGES *pRdEdgesPower, HAL_BOOL is2GHz)
{
    uint16_t twiceMaxEdgePower = AR5416_MAX_RATE_POWER;
    int      i;

    /* Get the edge power */
    for (i = 0; (i < AR5416_NUM_BAND_EDGES) && (pRdEdgesPower[i].bChannel != AR5416_BCHAN_UNUSED) ; i++) {
        /*
         * If there's an exact channel match or an inband flag set
         * on the lower channel use the given rdEdgePower
         */
        if (freq == FUNC2(pRdEdgesPower[i].bChannel, is2GHz)) {
            twiceMaxEdgePower = FUNC1(pRdEdgesPower[i].tPowerFlag, CAL_CTL_EDGES_POWER);
            break;
        } else if ((i > 0) && (freq < FUNC2(pRdEdgesPower[i].bChannel, is2GHz))) {
            if (FUNC2(pRdEdgesPower[i - 1].bChannel, is2GHz) < freq && (pRdEdgesPower[i - 1].tPowerFlag & CAL_CTL_EDGES_FLAG) != 0) {
                twiceMaxEdgePower = FUNC1(pRdEdgesPower[i - 1].tPowerFlag, CAL_CTL_EDGES_POWER);
            }
            /* Leave loop - no more affecting edges possible in this monotonic increasing list */
            break;
        }
    }
    FUNC0(twiceMaxEdgePower > 0);
    return twiceMaxEdgePower;
}