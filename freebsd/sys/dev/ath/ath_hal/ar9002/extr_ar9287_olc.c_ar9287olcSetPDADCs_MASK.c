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
typedef  int uint32_t ;
typedef  int uint16_t ;
typedef  int txPower ;
struct ath_hal {int dummy; } ;
typedef  int /*<<< orphan*/  int32_t ;

/* Variables and functions */
 int FUNC0 (struct ath_hal*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct ath_hal*,int,int) ; 

void
FUNC2(struct ath_hal *ah, int32_t txPower,
    uint16_t chain)
{
        uint32_t tmpVal;
        uint32_t a;

        /* Enable OLPC for chain 0 */

        tmpVal = FUNC0(ah, 0xa270);
        tmpVal = tmpVal & 0xFCFFFFFF;
        tmpVal = tmpVal | (0x3 << 24);
        FUNC1(ah, 0xa270, tmpVal);

        /* Enable OLPC for chain 1 */

        tmpVal = FUNC0(ah, 0xb270);
        tmpVal = tmpVal & 0xFCFFFFFF;
        tmpVal = tmpVal | (0x3 << 24);
        FUNC1(ah, 0xb270, tmpVal);

        /* Write the OLPC ref power for chain 0 */

        if (chain == 0) {
                tmpVal = FUNC0(ah, 0xa398);
                tmpVal = tmpVal & 0xff00ffff;
                a = (txPower)&0xff;
                tmpVal = tmpVal | (a << 16);
                FUNC1(ah, 0xa398, tmpVal);
        }

        /* Write the OLPC ref power for chain 1 */

        if (chain == 1) {
                tmpVal = FUNC0(ah, 0xb398);
                tmpVal = tmpVal & 0xff00ffff;
                a = (txPower)&0xff;
                tmpVal = tmpVal | (a << 16);
                FUNC1(ah, 0xb398, tmpVal);
        }
}