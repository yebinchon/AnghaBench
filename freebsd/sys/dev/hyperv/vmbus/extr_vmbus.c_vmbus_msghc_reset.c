
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vmbus_msghc {int mh_xact; } ;
struct hypercall_postmsg_in {size_t hc_dsize; int hc_msgtype; int hc_connid; } ;


 size_t HYPERCALL_POSTMSGIN_DSIZE_MAX ;
 int HYPERCALL_POSTMSGIN_SIZE ;
 int HYPERV_MSGTYPE_CHANNEL ;
 int VMBUS_CONNID_MESSAGE ;
 int memset (struct hypercall_postmsg_in*,int ,int ) ;
 int panic (char*,size_t) ;
 struct hypercall_postmsg_in* vmbus_xact_req_data (int ) ;

void
vmbus_msghc_reset(struct vmbus_msghc *mh, size_t dsize)
{
 struct hypercall_postmsg_in *inprm;

 if (dsize > HYPERCALL_POSTMSGIN_DSIZE_MAX)
  panic("invalid data size %zu", dsize);

 inprm = vmbus_xact_req_data(mh->mh_xact);
 memset(inprm, 0, HYPERCALL_POSTMSGIN_SIZE);
 inprm->hc_connid = VMBUS_CONNID_MESSAGE;
 inprm->hc_msgtype = HYPERV_MSGTYPE_CHANNEL;
 inprm->hc_dsize = dsize;
}
