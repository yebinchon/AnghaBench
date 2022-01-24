#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_3__ ;
typedef  struct TYPE_15__   TYPE_2__ ;
typedef  struct TYPE_14__   TYPE_1__ ;

/* Type definitions */
struct TYPE_16__ {TYPE_1__* mvChannel; } ;
struct TYPE_15__ {int /*<<< orphan*/  adapterId; scalar_t__ IALData; } ;
struct TYPE_14__ {int /*<<< orphan*/  maxUltraDmaModeSupported; int /*<<< orphan*/  maxPioModeSupported; } ;
typedef  size_t MV_U8 ;
typedef  TYPE_2__ MV_SATA_ADAPTER ;
typedef  TYPE_3__ IAL_ADAPTER_T ;

/* Variables and functions */
 int /*<<< orphan*/  MV_ATA_SET_FEATURES_TRANSFER ; 
 int /*<<< orphan*/  MV_ATA_TRANSFER_PIO_SLOW ; 
 int /*<<< orphan*/  FUNC0 (char*,size_t,...) ; 
 scalar_t__ MV_FALSE ; 
 int /*<<< orphan*/  MV_FLUSH_TYPE_CALLBACK ; 
 int /*<<< orphan*/  MV_NON_UDMA_PROTOCOL_NON_DATA ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*,size_t) ; 
 scalar_t__ FUNC2 (TYPE_2__*,size_t) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,size_t) ; 
 scalar_t__ FUNC4 (TYPE_2__*,size_t) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*,size_t,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (TYPE_2__*,size_t) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*,size_t,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC8 (TYPE_2__*,size_t,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (TYPE_2__*,size_t) ; 

int
FUNC10(MV_SATA_ADAPTER *pMvSataAdapter, MV_U8 channel)
{
	IAL_ADAPTER_T   *pAdapter = (IAL_ADAPTER_T *)pMvSataAdapter->IALData;

	FUNC3(pMvSataAdapter, channel);
	/* Flush pending commands */
	FUNC5 (pMvSataAdapter, channel, MV_FLUSH_TYPE_CALLBACK);

	/* Software reset channel */
	if (FUNC9(pMvSataAdapter, channel) == MV_FALSE)
	{
		FUNC0("RR18xx [%d,%d]: failed to perform Software reset\n",
				 pMvSataAdapter->adapterId, channel);
		FUNC1(pAdapter, channel);
		return -1;
	}
	
	/* Hardware reset channel */
	if (FUNC2(pMvSataAdapter, channel)== MV_FALSE)
	{
		FUNC0("RR18xx [%d,%d] Failed to Hard reser the SATA channel\n",
				 pMvSataAdapter->adapterId, channel);
		FUNC1(pAdapter, channel);
		return -1;
	}

	if (FUNC6(pMvSataAdapter, channel) == MV_FALSE)
	{
		 FUNC0("RR18xx [%d,%d] Failed to Connect Device\n",
				 pMvSataAdapter->adapterId, channel);
		FUNC1(pAdapter, channel);
		return -1;
	}else
	{
		FUNC0("channel %d: perform recalibrate command", channel);
		if (!FUNC7(pMvSataAdapter, channel,
								MV_NON_UDMA_PROTOCOL_NON_DATA,
								MV_FALSE,
								NULL,	 /* pBuffer*/
								0,		 /* count  */
								0,		/*features*/
										/* sectorCount */
								0,
								0,	/* lbaLow */
								0,	/* lbaMid */
									/* lbaHigh */
								0,
								0,		/* device */
										/* command */
								0x10))
			FUNC0("channel %d: recalibrate failed", channel);
		
		/* Set transfer mode */
		if((FUNC8(pMvSataAdapter, channel,
						MV_ATA_SET_FEATURES_TRANSFER,
						MV_ATA_TRANSFER_PIO_SLOW, 0, 0, 0) == MV_FALSE) || 
			(FUNC8(pMvSataAdapter, channel,
						MV_ATA_SET_FEATURES_TRANSFER,
						pAdapter->mvChannel[channel].maxPioModeSupported, 0, 0, 0) == MV_FALSE) ||
			(FUNC8(pMvSataAdapter, channel,
						MV_ATA_SET_FEATURES_TRANSFER,
						pAdapter->mvChannel[channel].maxUltraDmaModeSupported, 0, 0, 0) == MV_FALSE) )
		{
			FUNC0("channel %d: Set Features failed", channel);
			FUNC1(pAdapter, channel);
			return -1;
		}
		/* Enable EDMA */
		if (FUNC4(pMvSataAdapter, channel) == MV_FALSE)
		{
			FUNC0("Failed to enable DMA, channel=%d", channel);
			FUNC1(pAdapter, channel);
			return -1;
		}
	}
	return 0;
}