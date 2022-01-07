
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ uint16_t ;
struct TYPE_3__ {scalar_t__ bChannel; int tPowerFlag; } ;
typedef int HAL_BOOL ;
typedef TYPE_1__ CAL_CTL_EDGES ;


 scalar_t__ AR5416_BCHAN_UNUSED ;
 scalar_t__ AR5416_MAX_RATE_POWER ;
 int AR5416_NUM_BAND_EDGES ;
 int CAL_CTL_EDGES_FLAG ;
 int CAL_CTL_EDGES_POWER ;
 int HALASSERT (int) ;
 scalar_t__ MS (int,int ) ;
 scalar_t__ fbin2freq (scalar_t__,int ) ;

uint16_t
ar5416GetMaxEdgePower(uint16_t freq, CAL_CTL_EDGES *pRdEdgesPower, HAL_BOOL is2GHz)
{
    uint16_t twiceMaxEdgePower = AR5416_MAX_RATE_POWER;
    int i;


    for (i = 0; (i < AR5416_NUM_BAND_EDGES) && (pRdEdgesPower[i].bChannel != AR5416_BCHAN_UNUSED) ; i++) {




        if (freq == fbin2freq(pRdEdgesPower[i].bChannel, is2GHz)) {
            twiceMaxEdgePower = MS(pRdEdgesPower[i].tPowerFlag, CAL_CTL_EDGES_POWER);
            break;
        } else if ((i > 0) && (freq < fbin2freq(pRdEdgesPower[i].bChannel, is2GHz))) {
            if (fbin2freq(pRdEdgesPower[i - 1].bChannel, is2GHz) < freq && (pRdEdgesPower[i - 1].tPowerFlag & CAL_CTL_EDGES_FLAG) != 0) {
                twiceMaxEdgePower = MS(pRdEdgesPower[i - 1].tPowerFlag, CAL_CTL_EDGES_POWER);
            }

            break;
        }
    }
    HALASSERT(twiceMaxEdgePower > 0);
    return twiceMaxEdgePower;
}
