
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8_t ;
struct octusb_td {TYPE_2__* qh; } ;
struct octusb_softc {TYPE_1__* sc_port; } ;
struct TYPE_4__ {int ep_allocated; size_t root_port_index; int ep_num; scalar_t__ dev_speed; int fixup_handle; int ep_handle; scalar_t__ fixup_actlen; scalar_t__ fixup_pending; scalar_t__ fixup_off; scalar_t__ fixup_len; scalar_t__ fixup_complete; int ep_toggle_next; int hs_hub_port; int hs_hub_addr; int ep_mult; int ep_interval; int ep_type; int max_packet_size; int dev_addr; struct octusb_softc* sc; } ;
struct TYPE_3__ {int state; } ;


 int CVMX_USB_DIRECTION_IN ;
 int CVMX_USB_DIRECTION_OUT ;
 int DPRINTFN (int,char*,int) ;
 int UE_ADDR ;
 int UE_DIR_IN ;
 scalar_t__ USB_SPEED_HIGH ;
 int cvmx_usb_open_pipe (int *,int ,int ,int,int ,int ,int ,int ,int ,int ,int ,int ) ;
 int cvmx_usb_set_toggle (int *,int,int ) ;
 int octusb_convert_ep_type (int ) ;
 int octusb_convert_speed (scalar_t__) ;

__attribute__((used)) static uint8_t
octusb_host_alloc_endpoint(struct octusb_td *td)
{
 struct octusb_softc *sc;
 int ep_handle;

 if (td->qh->fixup_pending)
  return (1);

 if (td->qh->ep_allocated)
  return (0);


 sc = td->qh->sc;

 ep_handle = cvmx_usb_open_pipe(
     &sc->sc_port[td->qh->root_port_index].state,
     0,
     td->qh->dev_addr,
     td->qh->ep_num & UE_ADDR,
     octusb_convert_speed(td->qh->dev_speed),
     td->qh->max_packet_size,
     octusb_convert_ep_type(td->qh->ep_type),
     (td->qh->ep_num & UE_DIR_IN) ? CVMX_USB_DIRECTION_IN :
     CVMX_USB_DIRECTION_OUT,
     td->qh->ep_interval,
     (td->qh->dev_speed == USB_SPEED_HIGH) ? td->qh->ep_mult : 0,
     td->qh->hs_hub_addr,
     td->qh->hs_hub_port);

 if (ep_handle < 0) {
  DPRINTFN(1, "cvmx_usb_open_pipe failed: %d\n", ep_handle);
  return (1);
 }

 cvmx_usb_set_toggle(
     &sc->sc_port[td->qh->root_port_index].state,
     ep_handle, td->qh->ep_toggle_next);

 td->qh->fixup_handle = -1;
 td->qh->fixup_complete = 0;
 td->qh->fixup_len = 0;
 td->qh->fixup_off = 0;
 td->qh->fixup_pending = 0;
 td->qh->fixup_actlen = 0;

 td->qh->ep_handle = ep_handle;
 td->qh->ep_allocated = 1;

 return (0);
}
