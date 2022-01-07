
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_18__ TYPE_3__ ;
typedef struct TYPE_17__ TYPE_2__ ;
typedef struct TYPE_16__ TYPE_1__ ;


typedef int uint32_t ;
typedef int ispstatusreq_t ;
struct TYPE_16__ {int isp_nchan; } ;
typedef TYPE_1__ ispsoftc_t ;
typedef int isphdr_t ;
struct TYPE_17__ {int ridacq_vp_port_lo; int* ridacq_map; int ridacq_vp_index; int ridacq_vp_status; int ridacq_format; int ridacq_vp_port_hi; } ;
typedef TYPE_2__ isp_ridacq_t ;
struct TYPE_18__ {int isp_topo; int isp_portid; void* isp_loopstate; int role; } ;
typedef TYPE_3__ fcparam ;


 TYPE_3__* FCPARAM (TYPE_1__*,int) ;
 int ISPASYNC_CHANGE_NOTIFY ;
 int ISPASYNC_CHANGE_OTHER ;
 int ISPASYNC_LOOP_DOWN ;
 int ISP_IOXGET_32 (TYPE_1__*,int*,int) ;
 int ISP_LOG_WARN1 ;
 int ISP_ROLE_NONE ;
 void* LOOP_HAVE_ADDR ;
 void* LOOP_HAVE_LINK ;
 void* LOOP_NIL ;
 int QENTRY_LEN ;
 int RIDACQ_STS_CHANGED ;
 int RIDACQ_STS_COMPLETE ;
 int isp_async (TYPE_1__*,int ,int,...) ;
 int isp_destroy_handle (TYPE_1__*,int) ;
 void* isp_find_xs (TYPE_1__*,int) ;
 int isp_get_ridacq (TYPE_1__*,TYPE_2__*,TYPE_2__*) ;
 int isp_prt (TYPE_1__*,int ,char*) ;
 int isp_target_notify (TYPE_1__*,int *,int*) ;
 int memcpy (void*,int *,int ) ;
 int wakeup (void*) ;

__attribute__((used)) static int
isp_handle_other_response(ispsoftc_t *isp, int type, isphdr_t *hp, uint32_t *optrp)
{
 isp_ridacq_t rid;
 int chan, c;
 uint32_t hdl, portid;
 void *ptr;

 switch (type) {
 case 134:
  isp_prt(isp, ISP_LOG_WARN1, "Marker Response");
  return (1);
 case 130:
  isp_get_ridacq(isp, (isp_ridacq_t *)hp, &rid);
  portid = (uint32_t)rid.ridacq_vp_port_hi << 16 |
      rid.ridacq_vp_port_lo;
  if (rid.ridacq_format == 0) {
   for (chan = 0; chan < isp->isp_nchan; chan++) {
    fcparam *fcp = FCPARAM(isp, chan);
    if (fcp->role == ISP_ROLE_NONE)
     continue;
    c = (chan == 0) ? 127 : (chan - 1);
    if (rid.ridacq_map[c / 16] & (1 << (c % 16)) ||
        chan == 0) {
     fcp->isp_loopstate = LOOP_HAVE_LINK;
     isp_async(isp, ISPASYNC_CHANGE_NOTIFY,
         chan, ISPASYNC_CHANGE_OTHER);
    } else {
     fcp->isp_loopstate = LOOP_NIL;
     isp_async(isp, ISPASYNC_LOOP_DOWN,
         chan);
    }
   }
  } else {
   fcparam *fcp = FCPARAM(isp, rid.ridacq_vp_index);
   if (rid.ridacq_vp_status == RIDACQ_STS_COMPLETE ||
       rid.ridacq_vp_status == RIDACQ_STS_CHANGED) {
    fcp->isp_topo = (rid.ridacq_map[0] >> 9) & 0x7;
    fcp->isp_portid = portid;
    fcp->isp_loopstate = LOOP_HAVE_ADDR;
    isp_async(isp, ISPASYNC_CHANGE_NOTIFY,
        rid.ridacq_vp_index, ISPASYNC_CHANGE_OTHER);
   } else {
    fcp->isp_loopstate = LOOP_NIL;
    isp_async(isp, ISPASYNC_LOOP_DOWN,
        rid.ridacq_vp_index);
   }
  }
  return (1);
 case 136:
 case 128:
 case 129:
 case 135:
  ISP_IOXGET_32(isp, (uint32_t *)(hp + 1), hdl);
  ptr = isp_find_xs(isp, hdl);
  if (ptr != ((void*)0)) {
   isp_destroy_handle(isp, hdl);
   memcpy(ptr, hp, QENTRY_LEN);
   wakeup(ptr);
  }
  return (1);
 case 143:
 case 141:
 case 133:
 case 132:
 case 140:
 case 142:
 case 139:
 case 138:
 case 137:
 case 145:
 case 144:




 case 131:
 default:
  return (0);
 }
}
