#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ ULONG ;
typedef  int UINT ;
struct TYPE_10__ {TYPE_2__** sataChannel; } ;
struct TYPE_11__ {TYPE_3__ mvSataAdapter; } ;
struct TYPE_9__ {scalar_t__ outstandingCommands; } ;
struct TYPE_8__ {scalar_t__ OsExt; } ;
typedef  TYPE_1__* PVBus ;
typedef  size_t MV_U8 ;
typedef  TYPE_2__ MV_SATA_CHANNEL ;
typedef  TYPE_3__ MV_SATA_ADAPTER ;
typedef  TYPE_4__ IAL_ADAPTER_T ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 size_t MV_SATA_CHANNELS_NUM ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*,size_t) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  _VBUS_P0 ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC5 () ; 

void FUNC6(PVBus _vbus_p)
{
	UINT cont;
	ULONG ticks = 0;
	MV_U8 channel;
	MV_SATA_ADAPTER *pMvSataAdapter = &((IAL_ADAPTER_T *)_vbus_p->OsExt)->mvSataAdapter;
	MV_SATA_CHANNEL *pMvSataChannel;

	do {
check_cmds:
		cont = 0;
		FUNC0(_VBUS_P0);
#ifdef _RAID5N_
		dataxfer_poll();
		xor_poll();
#endif
		for (channel=0;channel< MV_SATA_CHANNELS_NUM;channel++) {
			pMvSataChannel = pMvSataAdapter->sataChannel[channel];
			if (pMvSataChannel && pMvSataChannel->outstandingCommands) 
			{
				while (pMvSataChannel->outstandingCommands) {
					if (!FUNC4(pMvSataAdapter)) {
						FUNC2(1000);
						if (ticks++ > 3000) {
							FUNC1(pMvSataAdapter,channel);
							goto check_cmds;
						}
					}
					else 
						ticks = 0;
				}
				cont = 1;
			}
		}
	} while (cont);
}