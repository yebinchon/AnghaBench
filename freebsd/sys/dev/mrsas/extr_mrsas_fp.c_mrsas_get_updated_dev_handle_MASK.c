#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  size_t u_int8_t ;
typedef  int /*<<< orphan*/  u_int16_t ;
struct mrsas_softc {int map_id; int /*<<< orphan*/ ** ld_drv_map; } ;
struct IO_REQUEST_INFO {int /*<<< orphan*/  pdInterface; } ;
struct TYPE_4__ {int /*<<< orphan*/ * scsi_pending_cmds; } ;
typedef  TYPE_1__* PLD_LOAD_BALANCE_INFO ;
typedef  int /*<<< orphan*/  MR_DRV_RAID_MAP_ALL ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (size_t,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (size_t,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 size_t FUNC3 (struct mrsas_softc*,TYPE_1__*,struct IO_REQUEST_INFO*) ; 

u_int16_t 
FUNC4(struct mrsas_softc *sc,
    PLD_LOAD_BALANCE_INFO lbInfo, struct IO_REQUEST_INFO *io_info)
{
	u_int8_t arm_pd;
	u_int16_t devHandle;
	MR_DRV_RAID_MAP_ALL *drv_map;

	drv_map = sc->ld_drv_map[(sc->map_id & 1)];

	/* get best new arm */
	arm_pd = FUNC3(sc, lbInfo, io_info);
	devHandle = FUNC0(arm_pd, drv_map);
	io_info->pdInterface = FUNC1(arm_pd, drv_map);
	FUNC2(&lbInfo->scsi_pending_cmds[arm_pd]);

	return devHandle;
}