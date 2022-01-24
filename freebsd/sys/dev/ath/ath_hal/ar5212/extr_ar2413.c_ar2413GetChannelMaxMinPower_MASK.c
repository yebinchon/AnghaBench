#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_6__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int uint16_t ;
struct ieee80211_channel {int ic_freq; } ;
struct ath_hal {int dummy; } ;
typedef  int int8_t ;
typedef  int int16_t ;
struct TYPE_10__ {TYPE_3__* ah_eeprom; } ;
struct TYPE_9__ {TYPE_1__* ee_rawDataset2413; } ;
struct TYPE_8__ {int channelValue; } ;
struct TYPE_7__ {int numChannels; TYPE_2__* pDataPerChannel; } ;
typedef  TYPE_1__ RAW_DATA_STRUCT_2413 ;
typedef  TYPE_2__ RAW_DATA_PER_CHANNEL_2413 ;
typedef  TYPE_3__ HAL_EEPROM ;
typedef  int /*<<< orphan*/  HAL_BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  AH_FALSE ; 
 void* AH_NULL ; 
 TYPE_6__* FUNC0 (struct ath_hal*) ; 
 int /*<<< orphan*/  AH_TRUE ; 
 scalar_t__ FUNC1 (struct ieee80211_channel const*) ; 
 scalar_t__ FUNC2 (struct ieee80211_channel const*) ; 
 scalar_t__ FUNC3 (struct ieee80211_channel const*) ; 
 int FUNC4 (struct ath_hal*,TYPE_2__ const*) ; 
 int FUNC5 (struct ath_hal*,TYPE_2__ const*) ; 
 size_t headerInfo11B ; 
 size_t headerInfo11G ; 

__attribute__((used)) static HAL_BOOL
FUNC6(struct ath_hal *ah,
	const struct ieee80211_channel *chan,
	int16_t *maxPow, int16_t *minPow)
{
	uint16_t freq = chan->ic_freq;		/* NB: never mapped */
	const HAL_EEPROM *ee = FUNC0(ah)->ah_eeprom;
	const RAW_DATA_STRUCT_2413 *pRawDataset = AH_NULL;
	const RAW_DATA_PER_CHANNEL_2413 *data = AH_NULL;
	uint16_t numChannels;
	int totalD,totalF, totalMin,last, i;

	*maxPow = 0;

	if (FUNC3(chan) || FUNC1(chan))
		pRawDataset = &ee->ee_rawDataset2413[headerInfo11G];
	else if (FUNC2(chan))
		pRawDataset = &ee->ee_rawDataset2413[headerInfo11B];
	else
		return(AH_FALSE);

	numChannels = pRawDataset->numChannels;
	data = pRawDataset->pDataPerChannel;
	
	/* Make sure the channel is in the range of the TP values 
	 *  (freq piers)
	 */
	if (numChannels < 1)
		return(AH_FALSE);

	if ((freq < data[0].channelValue) ||
	    (freq > data[numChannels-1].channelValue)) {
		if (freq < data[0].channelValue) {
			*maxPow = FUNC4(ah, &data[0]);
			*minPow = FUNC5(ah, &data[0]);
			return(AH_TRUE);
		} else {
			*maxPow = FUNC4(ah, &data[numChannels - 1]);
			*minPow = FUNC5(ah, &data[numChannels - 1]);
			return(AH_TRUE);
		}
	}

	/* Linearly interpolate the power value now */
	for (last=0,i=0; (i<numChannels) && (freq > data[i].channelValue);
	     last = i++);
	totalD = data[i].channelValue - data[last].channelValue;
	if (totalD > 0) {
		totalF = FUNC4(ah, &data[i]) - FUNC4(ah, &data[last]);
		*maxPow = (int8_t) ((totalF*(freq-data[last].channelValue) + 
				     FUNC4(ah, &data[last])*totalD)/totalD);
		totalMin = FUNC5(ah, &data[i]) - FUNC5(ah, &data[last]);
		*minPow = (int8_t) ((totalMin*(freq-data[last].channelValue) +
				     FUNC5(ah, &data[last])*totalD)/totalD);
		return(AH_TRUE);
	} else {
		if (freq == data[i].channelValue) {
			*maxPow = FUNC4(ah, &data[i]);
			*minPow = FUNC5(ah, &data[i]);
			return(AH_TRUE);
		} else
			return(AH_FALSE);
	}
}