
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct octusb_td {TYPE_2__* qh; } ;
struct octusb_softc {TYPE_1__* sc_port; } ;
struct TYPE_4__ {scalar_t__ ep_allocated; size_t root_port_index; int ep_handle; int fixup_handle; struct octusb_softc* sc; } ;
struct TYPE_3__ {int state; } ;


 int cvmx_usb_cancel (int *,int ,int ) ;
 int cvmx_usb_close_pipe (int *,int ) ;

__attribute__((used)) static void
octusb_host_free_endpoint(struct octusb_td *td)
{
 struct octusb_softc *sc;

 if (td->qh->ep_allocated == 0)
  return;


 sc = td->qh->sc;

 if (td->qh->fixup_handle >= 0) {

  cvmx_usb_cancel(&sc->sc_port[td->qh->root_port_index].state,
      td->qh->ep_handle, td->qh->fixup_handle);
 }
 cvmx_usb_close_pipe(&sc->sc_port[td->qh->root_port_index].state, td->qh->ep_handle);

 td->qh->ep_allocated = 0;
}
