
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint16_t ;
typedef scalar_t__ HAL_BOOL ;


 int AR5416_BCHAN_UNUSED ;

__attribute__((used)) static uint16_t
fbin2freq(uint8_t fbin, HAL_BOOL is2GHz)
{




    if (fbin == AR5416_BCHAN_UNUSED) {
        return fbin;
    }

    return (uint16_t)((is2GHz) ? (2300 + fbin) : (4800 + 5 * fbin));
}
