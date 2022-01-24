#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_5__ ;
typedef  struct TYPE_15__   TYPE_4__ ;
typedef  struct TYPE_14__   TYPE_3__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
typedef  int uint32_t ;
typedef  int /*<<< orphan*/  u_int ;
struct mpt_softc {int dummy; } ;
struct mpt_raid_volume {TYPE_1__* config_page; } ;
struct TYPE_13__ {int PhysDiskNum; } ;
struct mpt_raid_disk {TYPE_2__ config_page; } ;
struct TYPE_14__ {int index; TYPE_5__* req_vbuf; } ;
typedef  TYPE_3__ request_t ;
typedef  int /*<<< orphan*/  bus_size_t ;
typedef  int bus_addr_t ;
struct TYPE_16__ {int PhysDiskNum; void* MsgContext; int /*<<< orphan*/  ActionDataSGE; int /*<<< orphan*/  VolumeBus; int /*<<< orphan*/  VolumeID; int /*<<< orphan*/  Function; void* ActionDataWord; int /*<<< orphan*/  Action; } ;
struct TYPE_15__ {int FlagsLength; void* Address; } ;
struct TYPE_12__ {int /*<<< orphan*/  VolumeBus; int /*<<< orphan*/  VolumeID; } ;
typedef  TYPE_4__ SGE_SIMPLE32 ;
typedef  TYPE_5__ MSG_RAID_ACTION_REQUEST ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  MPI_FUNCTION_RAID_ACTION ; 
 int MPI_SGE_FLAGS_END_OF_BUFFER ; 
 int MPI_SGE_FLAGS_END_OF_LIST ; 
 int MPI_SGE_FLAGS_HOST_TO_IOC ; 
 int MPI_SGE_FLAGS_IOC_TO_HOST ; 
 int MPI_SGE_FLAGS_LAST_ELEMENT ; 
 int MPI_SGE_FLAGS_SIMPLE_ELEMENT ; 
 int /*<<< orphan*/  FUNC0 (TYPE_4__*,int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_4__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  REQ_STATE_DONE ; 
 void* FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_5__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (struct mpt_softc*) ; 
 int /*<<< orphan*/  FUNC5 (struct mpt_softc*,TYPE_3__*) ; 
 int FUNC6 (struct mpt_softc*,TYPE_3__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int raid_handler_id ; 

__attribute__((used)) static int
FUNC7(struct mpt_softc *mpt, struct mpt_raid_volume *vol,
		   struct mpt_raid_disk *disk, request_t *req, u_int Action,
		   uint32_t ActionDataWord, bus_addr_t addr, bus_size_t len,
		   int write, int wait)
{
	MSG_RAID_ACTION_REQUEST *rap;
	SGE_SIMPLE32 *se;

	rap = req->req_vbuf;
	FUNC3(rap, 0, sizeof *rap);
	rap->Action = Action;
	rap->ActionDataWord = FUNC2(ActionDataWord);
	rap->Function = MPI_FUNCTION_RAID_ACTION;
	rap->VolumeID = vol->config_page->VolumeID;
	rap->VolumeBus = vol->config_page->VolumeBus;
	if (disk != NULL)
		rap->PhysDiskNum = disk->config_page.PhysDiskNum;
	else
		rap->PhysDiskNum = 0xFF;
	se = (SGE_SIMPLE32 *)&rap->ActionDataSGE;
	se->Address = FUNC2(addr);
	FUNC1(se, len);
	FUNC0(se, (MPI_SGE_FLAGS_SIMPLE_ELEMENT |
	    MPI_SGE_FLAGS_LAST_ELEMENT | MPI_SGE_FLAGS_END_OF_BUFFER |
	    MPI_SGE_FLAGS_END_OF_LIST |
	    (write ? MPI_SGE_FLAGS_HOST_TO_IOC : MPI_SGE_FLAGS_IOC_TO_HOST)));
	se->FlagsLength = FUNC2(se->FlagsLength);
	rap->MsgContext = FUNC2(req->index | raid_handler_id);

	FUNC4(mpt);
	FUNC5(mpt, req);

	if (wait) {
		return (FUNC6(mpt, req, REQ_STATE_DONE, REQ_STATE_DONE,
				     /*sleep_ok*/FALSE, /*time_ms*/2000));
	} else {
		return (0);
	}
}