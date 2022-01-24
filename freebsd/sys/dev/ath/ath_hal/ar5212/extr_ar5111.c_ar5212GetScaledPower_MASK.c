#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint16_t ;
struct TYPE_5__ {int /*<<< orphan*/  numChannels; int /*<<< orphan*/  pChannelList; } ;
typedef  TYPE_1__ PCDACS_EEPROM ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__ const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__ const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static uint16_t
FUNC4(uint16_t channel, uint16_t pcdacValue,
	const PCDACS_EEPROM *pSrcStruct)
{
	uint16_t powerValue;
	uint16_t lFreq, rFreq;		/* left and right frequency values */
	uint16_t llPcdac, ulPcdac;	/* lower and upper left pcdac values */
	uint16_t lrPcdac, urPcdac;	/* lower and upper right pcdac values */
	uint16_t lPwr, uPwr;		/* lower and upper temp pwr values */
	uint16_t lScaledPwr, rScaledPwr; /* left and right scaled power */

	if (FUNC0(channel, pcdacValue, pSrcStruct, &powerValue)) {
		/* value was copied from srcStruct */
		return powerValue;
	}

	FUNC2(channel,
		pSrcStruct->pChannelList, pSrcStruct->numChannels,
		&lFreq, &rFreq);
	FUNC1(pcdacValue,
		lFreq, pSrcStruct, &llPcdac, &ulPcdac);
	FUNC1(pcdacValue,
		rFreq, pSrcStruct, &lrPcdac, &urPcdac);

	/* get the power index for the pcdac value */
	FUNC0(lFreq, llPcdac, pSrcStruct, &lPwr);
	FUNC0(lFreq, ulPcdac, pSrcStruct, &uPwr);
	lScaledPwr = FUNC3(pcdacValue, llPcdac, ulPcdac, lPwr, uPwr);

	FUNC0(rFreq, lrPcdac, pSrcStruct, &lPwr);
	FUNC0(rFreq, urPcdac, pSrcStruct, &uPwr);
	rScaledPwr = FUNC3(pcdacValue, lrPcdac, urPcdac, lPwr, uPwr);

	return FUNC3(channel, lFreq, rFreq, lScaledPwr, rScaledPwr);
}