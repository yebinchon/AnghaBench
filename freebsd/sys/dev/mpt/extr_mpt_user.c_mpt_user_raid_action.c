
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef int uint8_t ;
struct mpt_user_raid_action_result {int action_data; int action_status; int volume_status; } ;
struct mpt_softc {int dummy; } ;
struct mpt_raid_action {scalar_t__ len; int action_data; int action_status; int volume_status; int ioc_status; scalar_t__ write; int phys_disk_num; int volume_bus; int volume_id; int action_data_word; int action; } ;
struct mpt_page_memory {int paddr; int map; int tag; int * vaddr; } ;
struct TYPE_11__ {int index; int IOCStatus; TYPE_3__* req_vbuf; } ;
typedef TYPE_1__ request_t ;
struct TYPE_13__ {void* MsgContext; int ActionDataSGE; int PhysDiskNum; int VolumeBus; int VolumeID; int Function; int ActionDataWord; int Action; } ;
struct TYPE_12__ {int FlagsLength; void* Address; } ;
typedef TYPE_2__ SGE_SIMPLE32 ;
typedef TYPE_3__ MSG_RAID_ACTION_REQUEST ;


 int BUS_DMASYNC_POSTREAD ;
 int BUS_DMASYNC_POSTWRITE ;
 int BUS_DMASYNC_PREREAD ;
 int BUS_DMASYNC_PREWRITE ;
 int ENOMEM ;
 int MPI_FUNCTION_RAID_ACTION ;
 int MPI_IOCSTATUS_MASK ;
 int MPI_IOCSTATUS_SUCCESS ;
 int MPI_SGE_FLAGS_END_OF_BUFFER ;
 int MPI_SGE_FLAGS_END_OF_LIST ;
 int MPI_SGE_FLAGS_HOST_TO_IOC ;
 int MPI_SGE_FLAGS_IOC_TO_HOST ;
 int MPI_SGE_FLAGS_LAST_ELEMENT ;
 int MPI_SGE_FLAGS_SIMPLE_ELEMENT ;
 int MPI_pSGE_SET_FLAGS (TYPE_2__*,int) ;
 int MPI_pSGE_SET_LENGTH (TYPE_2__*,int ) ;
 int MPT_RQSL (struct mpt_softc*) ;
 int REQ_STATE_DONE ;
 int TRUE ;
 int bcopy (int ,int ,int) ;
 int bus_dmamap_sync (int ,int ,int) ;
 int htole16 (int) ;
 void* htole32 (int) ;
 int le32toh (scalar_t__) ;
 int memset (TYPE_3__*,int ,int) ;
 int mpt_check_doorbell (struct mpt_softc*) ;
 int mpt_free_request (struct mpt_softc*,TYPE_1__*) ;
 TYPE_1__* mpt_get_request (struct mpt_softc*,int ) ;
 int mpt_prt (struct mpt_softc*,char*) ;
 int mpt_send_cmd (struct mpt_softc*,TYPE_1__*) ;
 int mpt_wait_req (struct mpt_softc*,TYPE_1__*,int ,int ,int ,int) ;
 int user_handler_id ;

__attribute__((used)) static int
mpt_user_raid_action(struct mpt_softc *mpt, struct mpt_raid_action *raid_act,
 struct mpt_page_memory *mpt_page)
{
 request_t *req;
 struct mpt_user_raid_action_result *res;
 MSG_RAID_ACTION_REQUEST *rap;
 SGE_SIMPLE32 *se;
 int error;

 req = mpt_get_request(mpt, TRUE);
 if (req == ((void*)0))
  return (ENOMEM);
 rap = req->req_vbuf;
 memset(rap, 0, sizeof *rap);
 rap->Action = raid_act->action;
 rap->ActionDataWord = raid_act->action_data_word;
 rap->Function = MPI_FUNCTION_RAID_ACTION;
 rap->VolumeID = raid_act->volume_id;
 rap->VolumeBus = raid_act->volume_bus;
 rap->PhysDiskNum = raid_act->phys_disk_num;
 se = (SGE_SIMPLE32 *)&rap->ActionDataSGE;
 if (mpt_page->vaddr != ((void*)0) && raid_act->len != 0) {
  bus_dmamap_sync(mpt_page->tag, mpt_page->map,
      BUS_DMASYNC_PREREAD | BUS_DMASYNC_PREWRITE);
  se->Address = htole32(mpt_page->paddr);
  MPI_pSGE_SET_LENGTH(se, le32toh(raid_act->len));
  MPI_pSGE_SET_FLAGS(se, (MPI_SGE_FLAGS_SIMPLE_ELEMENT |
      MPI_SGE_FLAGS_LAST_ELEMENT | MPI_SGE_FLAGS_END_OF_BUFFER |
      MPI_SGE_FLAGS_END_OF_LIST |
      (raid_act->write ? MPI_SGE_FLAGS_HOST_TO_IOC :
      MPI_SGE_FLAGS_IOC_TO_HOST)));
 }
 se->FlagsLength = htole32(se->FlagsLength);
 rap->MsgContext = htole32(req->index | user_handler_id);

 mpt_check_doorbell(mpt);
 mpt_send_cmd(mpt, req);

 error = mpt_wait_req(mpt, req, REQ_STATE_DONE, REQ_STATE_DONE, TRUE,
     2000);
 if (error != 0) {



  mpt_prt(mpt, "mpt_user_raid_action timed out\n");
  return (error);
 }

 raid_act->ioc_status = htole16(req->IOCStatus);
 if ((req->IOCStatus & MPI_IOCSTATUS_MASK) != MPI_IOCSTATUS_SUCCESS) {
  mpt_free_request(mpt, req);
  return (0);
 }

 res = (struct mpt_user_raid_action_result *)
     (((uint8_t *)req->req_vbuf) + MPT_RQSL(mpt));
 raid_act->volume_status = res->volume_status;
 raid_act->action_status = res->action_status;
 bcopy(res->action_data, raid_act->action_data,
     sizeof(res->action_data));
 if (mpt_page->vaddr != ((void*)0))
  bus_dmamap_sync(mpt_page->tag, mpt_page->map,
      BUS_DMASYNC_POSTREAD | BUS_DMASYNC_POSTWRITE);
 mpt_free_request(mpt, req);
 return (0);
}
