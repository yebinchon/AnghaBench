
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8_t ;
struct octusb_td {int error_any; TYPE_2__* qh; } ;
struct octusb_softc {TYPE_1__* sc_port; } ;
struct TYPE_4__ {scalar_t__ fixup_complete; int* fixup_buf; size_t root_port_index; int fixup_handle; int fixup_pending; int fixup_len; scalar_t__ fixup_phys; int ep_handle; int fixup_pc; struct octusb_softc* sc; } ;
struct TYPE_3__ {int state; } ;


 int UE_DIR_IN ;
 int cvmx_usb_submit_control (int *,int ,scalar_t__,scalar_t__,int ,int *,struct octusb_td*) ;
 int octusb_complete_cb ;
 scalar_t__ octusb_host_alloc_endpoint (struct octusb_td*) ;
 int usb_pc_cpu_flush (int ) ;

__attribute__((used)) static uint8_t
octusb_host_control_status_tx(struct octusb_td *td)
{
 int status;


 if (octusb_host_alloc_endpoint(td))
  return (1);


 if (td->error_any)
  return (0);

 if (td->qh->fixup_complete != 0) {

  td->qh->fixup_complete = 0;

  return (0);
 }

 if (!(td->qh->fixup_buf[0] & UE_DIR_IN)) {

  struct octusb_softc *sc;


  sc = td->qh->sc;


  usb_pc_cpu_flush(td->qh->fixup_pc);


  status = cvmx_usb_submit_control(
      &sc->sc_port[td->qh->root_port_index].state,
      td->qh->ep_handle, td->qh->fixup_phys,
      td->qh->fixup_phys + 8, td->qh->fixup_len,
      &octusb_complete_cb, td);


  if (status < 0) {
   td->error_any = 1;
   return (0);
  }
  td->qh->fixup_handle = status;
  td->qh->fixup_pending = 1;
  td->qh->fixup_complete = 0;

  return (1);
 }
 return (0);
}
