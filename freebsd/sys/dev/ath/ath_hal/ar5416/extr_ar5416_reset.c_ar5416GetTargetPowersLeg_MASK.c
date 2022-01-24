#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ uint8_t ;
typedef  scalar_t__ uint16_t ;
struct ieee80211_channel {int dummy; } ;
struct ath_hal {int dummy; } ;
struct TYPE_9__ {scalar_t__ bChannel; scalar_t__* tPow2x; } ;
struct TYPE_8__ {scalar_t__ ext_center; scalar_t__ ctl_center; } ;
typedef  scalar_t__ HAL_BOOL ;
typedef  TYPE_1__ CHAN_CENTERS ;
typedef  TYPE_2__ CAL_TARGET_POWER_LEG ;

/* Variables and functions */
 scalar_t__ AR5416_BCHAN_UNUSED ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct ieee80211_channel const*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct ath_hal*,struct ieee80211_channel const*,TYPE_1__*) ; 
 scalar_t__ FUNC4 (scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC5 (scalar_t__,int /*<<< orphan*/ ) ; 

void
FUNC6(struct ath_hal *ah, 
                         const struct ieee80211_channel *chan,
                         CAL_TARGET_POWER_LEG *powInfo, uint16_t numChannels,
                         CAL_TARGET_POWER_LEG *pNewPower, uint16_t numRates,
			 HAL_BOOL isExtTarget)
{
    uint16_t clo, chi;
    int i;
    int matchIndex = -1, lowIndex = -1;
    uint16_t freq;
    CHAN_CENTERS centers;

    FUNC3(ah,  chan, &centers);
    freq = (isExtTarget) ? centers.ext_center :centers.ctl_center;

    /* Copy the target powers into the temp channel list */
    if (freq <= FUNC5(powInfo[0].bChannel, FUNC1(chan))) {
        matchIndex = 0;
    } else {
        for (i = 0; (i < numChannels) && (powInfo[i].bChannel != AR5416_BCHAN_UNUSED); i++) {
            if (freq == FUNC5(powInfo[i].bChannel, FUNC1(chan))) {
                matchIndex = i;
                break;
            } else if ((freq < FUNC5(powInfo[i].bChannel, FUNC1(chan))) &&
                       (freq > FUNC5(powInfo[i - 1].bChannel, FUNC1(chan))))
            {
                lowIndex = i - 1;
                break;
            }
        }
        if ((matchIndex == -1) && (lowIndex == -1)) {
            FUNC0(freq > FUNC5(powInfo[i - 1].bChannel, FUNC1(chan)));
            matchIndex = i - 1;
        }
    }

    if (matchIndex != -1) {
        FUNC2(pNewPower, &powInfo[matchIndex], sizeof(*pNewPower));
    } else {
        FUNC0(lowIndex != -1);
        /*
         * Get the lower and upper channels, target powers,
         * and interpolate between them.
         */
        clo = FUNC5(powInfo[lowIndex].bChannel, FUNC1(chan));
        chi = FUNC5(powInfo[lowIndex + 1].bChannel, FUNC1(chan));

        for (i = 0; i < numRates; i++) {
            pNewPower->tPow2x[i] = (uint8_t)FUNC4(freq, clo, chi,
                                   powInfo[lowIndex].tPow2x[i], powInfo[lowIndex + 1].tPow2x[i]);
        }
    }
}