
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_8__ {int hv_paddr; } ;
struct TYPE_7__ {int hv_paddr; } ;
struct TYPE_6__ {int hv_paddr; } ;
struct vmbus_softc {TYPE_4__ vmbus_mnf2_dma; TYPE_3__ vmbus_mnf1_dma; TYPE_2__ vmbus_evtflags_dma; } ;
struct vmbus_msghc {int dummy; } ;
struct vmbus_message {scalar_t__ msg_data; } ;
struct vmbus_chanmsg_connect_resp {int chm_done; } ;
struct TYPE_5__ {int chm_type; } ;
struct vmbus_chanmsg_connect {int chm_mnf2; int chm_mnf1; int chm_evtflags; int chm_ver; TYPE_1__ chm_hdr; } ;


 int ENXIO ;
 int EOPNOTSUPP ;
 int VMBUS_CHANMSG_TYPE_CONNECT ;
 struct vmbus_chanmsg_connect* vmbus_msghc_dataptr (struct vmbus_msghc*) ;
 int vmbus_msghc_exec (struct vmbus_softc*,struct vmbus_msghc*) ;
 struct vmbus_msghc* vmbus_msghc_get (struct vmbus_softc*,int) ;
 int vmbus_msghc_put (struct vmbus_softc*,struct vmbus_msghc*) ;
 struct vmbus_message* vmbus_msghc_wait_result (struct vmbus_softc*,struct vmbus_msghc*) ;

__attribute__((used)) static int
vmbus_connect(struct vmbus_softc *sc, uint32_t version)
{
 struct vmbus_chanmsg_connect *req;
 const struct vmbus_message *msg;
 struct vmbus_msghc *mh;
 int error, done = 0;

 mh = vmbus_msghc_get(sc, sizeof(*req));
 if (mh == ((void*)0))
  return ENXIO;

 req = vmbus_msghc_dataptr(mh);
 req->chm_hdr.chm_type = VMBUS_CHANMSG_TYPE_CONNECT;
 req->chm_ver = version;
 req->chm_evtflags = sc->vmbus_evtflags_dma.hv_paddr;
 req->chm_mnf1 = sc->vmbus_mnf1_dma.hv_paddr;
 req->chm_mnf2 = sc->vmbus_mnf2_dma.hv_paddr;

 error = vmbus_msghc_exec(sc, mh);
 if (error) {
  vmbus_msghc_put(sc, mh);
  return error;
 }

 msg = vmbus_msghc_wait_result(sc, mh);
 done = ((const struct vmbus_chanmsg_connect_resp *)
     msg->msg_data)->chm_done;

 vmbus_msghc_put(sc, mh);

 return (done ? 0 : EOPNOTSUPP);
}
