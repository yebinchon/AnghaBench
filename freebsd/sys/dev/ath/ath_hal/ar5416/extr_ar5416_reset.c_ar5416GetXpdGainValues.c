
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
struct ath_hal {int dummy; } ;


 int AR5416_NUM_PD_GAINS ;
 int AR5416_PD_GAINS_IN_MASK ;
 int HALASSERT (int ) ;

uint16_t
ar5416GetXpdGainValues(struct ath_hal *ah, uint16_t xpdMask,
    uint16_t xpdGainValues[])
{
    int i;
    uint16_t numXpdGain = 0;

    for (i = 1; i <= AR5416_PD_GAINS_IN_MASK; i++) {
        if ((xpdMask >> (AR5416_PD_GAINS_IN_MASK - i)) & 1) {
            if (numXpdGain >= AR5416_NUM_PD_GAINS) {
                HALASSERT(0);
                break;
            }
            xpdGainValues[numXpdGain] = (uint16_t)(AR5416_PD_GAINS_IN_MASK - i);
            numXpdGain++;
        }
    }
    return numXpdGain;
}
