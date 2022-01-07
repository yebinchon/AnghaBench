
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vmbus_softc {int dummy; } ;
struct vmbus_msghc {int dummy; } ;
struct TYPE_2__ {int chm_type; } ;
struct vmbus_chanmsg_chrequest {TYPE_1__ chm_hdr; } ;


 int ENXIO ;
 int VMBUS_CHANMSG_TYPE_CHREQUEST ;
 struct vmbus_chanmsg_chrequest* vmbus_msghc_dataptr (struct vmbus_msghc*) ;
 int vmbus_msghc_exec_noresult (struct vmbus_msghc*) ;
 struct vmbus_msghc* vmbus_msghc_get (struct vmbus_softc*,int) ;
 int vmbus_msghc_put (struct vmbus_softc*,struct vmbus_msghc*) ;

__attribute__((used)) static int
vmbus_req_channels(struct vmbus_softc *sc)
{
 struct vmbus_chanmsg_chrequest *req;
 struct vmbus_msghc *mh;
 int error;

 mh = vmbus_msghc_get(sc, sizeof(*req));
 if (mh == ((void*)0))
  return ENXIO;

 req = vmbus_msghc_dataptr(mh);
 req->chm_hdr.chm_type = VMBUS_CHANMSG_TYPE_CHREQUEST;

 error = vmbus_msghc_exec_noresult(mh);
 vmbus_msghc_put(sc, mh);

 return error;
}
