
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vmbus_msghc {int mh_xact; } ;
struct hypercall_postmsg_in {void* hc_data; } ;


 struct hypercall_postmsg_in* vmbus_xact_req_data (int ) ;

void *
vmbus_msghc_dataptr(struct vmbus_msghc *mh)
{
 struct hypercall_postmsg_in *inprm;

 inprm = vmbus_xact_req_data(mh->mh_xact);
 return (inprm->hc_data);
}
