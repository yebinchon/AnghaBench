
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_10__ {int sense_data; } ;
struct vmscsi_req {int scsi_status; int srb_status; scalar_t__ sense_info_len; TYPE_5__ u; int transfer_len; } ;
struct TYPE_6__ {struct vmscsi_req vm_srb; } ;
struct vstor_packet {TYPE_1__ u; } ;
struct storvsc_softc {scalar_t__ hs_num_out_reqs; int hs_drain_sema; scalar_t__ hs_drain_notify; } ;
struct TYPE_7__ {int scsi_status; int srb_status; int transfer_len; } ;
struct TYPE_8__ {TYPE_2__ vm_srb; } ;
struct TYPE_9__ {TYPE_3__ u; } ;
struct hv_storvsc_request {scalar_t__ sense_info_len; int sense_data; TYPE_4__ vstor_packet; } ;


 int KASSERT (int,char*) ;
 int SCSI_STATUS_CHECK_COND ;
 int SRB_STATUS_AUTOSENSE_VALID ;
 int atomic_subtract_int (scalar_t__*,int) ;
 int memcpy (int ,int ,scalar_t__) ;
 int sema_post (int *) ;
 int storvsc_io_done (struct hv_storvsc_request*) ;

__attribute__((used)) static void
hv_storvsc_on_iocompletion(struct storvsc_softc *sc,
      struct vstor_packet *vstor_packet,
      struct hv_storvsc_request *request)
{
 struct vmscsi_req *vm_srb;

 vm_srb = &vstor_packet->u.vm_srb;





 request->vstor_packet.u.vm_srb.scsi_status = vm_srb->scsi_status;
 request->vstor_packet.u.vm_srb.srb_status = vm_srb->srb_status;
 request->vstor_packet.u.vm_srb.transfer_len = vm_srb->transfer_len;

 if (((vm_srb->scsi_status & 0xFF) == SCSI_STATUS_CHECK_COND) &&
   (vm_srb->srb_status & SRB_STATUS_AUTOSENSE_VALID)) {


  KASSERT(vm_srb->sense_info_len <= request->sense_info_len,
    ("vm_srb->sense_info_len <= "
     "request->sense_info_len"));

  memcpy(request->sense_data, vm_srb->u.sense_data,
   vm_srb->sense_info_len);

  request->sense_info_len = vm_srb->sense_info_len;
 }


 storvsc_io_done(request);
 atomic_subtract_int(&sc->hs_num_out_reqs, 1);
 if (sc->hs_drain_notify && (sc->hs_num_out_reqs == 0)) {
  sema_post(&sc->hs_drain_sema);
 }
}
