
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint64_t ;
struct hypercall_postmsg_in {int dummy; } ;
struct vmbus_msghc {struct hypercall_postmsg_in mh_inprm_save; int mh_xact; } ;
typedef int sbintime_t ;
typedef int bus_addr_t ;


 int C_HARDCLOCK ;
 int EIO ;
 int HC_RETRY_MAX ;
 int HYPERCALL_POSTMSGIN_SIZE ;
 scalar_t__ HYPERCALL_STATUS_SUCCESS ;
 int SBT_1MS ;
 int SBT_1S ;
 scalar_t__ hypercall_post_message (int ) ;
 int memcpy (struct hypercall_postmsg_in*,struct hypercall_postmsg_in*,int ) ;
 int pause_sbt (char*,int,int ,int ) ;
 struct hypercall_postmsg_in* vmbus_xact_req_data (int ) ;
 int vmbus_xact_req_paddr (int ) ;

int
vmbus_msghc_exec_noresult(struct vmbus_msghc *mh)
{
 sbintime_t time = SBT_1MS;
 struct hypercall_postmsg_in *inprm;
 bus_addr_t inprm_paddr;
 int i;

 inprm = vmbus_xact_req_data(mh->mh_xact);
 inprm_paddr = vmbus_xact_req_paddr(mh->mh_xact);
 memcpy(&mh->mh_inprm_save, inprm, HYPERCALL_POSTMSGIN_SIZE);
 for (i = 0; i < 20; ++i) {
  uint64_t status;

  status = hypercall_post_message(inprm_paddr);
  if (status == HYPERCALL_STATUS_SUCCESS)
   return 0;

  pause_sbt("hcpmsg", time, 0, C_HARDCLOCK);
  if (time < SBT_1S * 2)
   time *= 2;


  memcpy(inprm, &mh->mh_inprm_save, HYPERCALL_POSTMSGIN_SIZE);
 }



 return EIO;
}
