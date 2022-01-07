
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ usb_error_t ;
typedef scalar_t__ uint8_t ;
struct wsp_softc {int sc_usb_device; struct wsp_dev_params* sc_params; } ;
struct wsp_dev_params {scalar_t__ tp_type; size_t um_switch_idx; int um_req_idx; int um_req_val; int iface_index; int um_size; scalar_t__ um_switch_off; scalar_t__ um_switch_on; } ;


 int DPRINTF (char*,scalar_t__) ;
 scalar_t__ TYPE3 ;
 scalar_t__ USB_ERR_NORMAL_COMPLETION ;
 int hz ;
 int pause (char*,int) ;
 scalar_t__ usbd_req_get_report (int ,int *,scalar_t__*,int ,int ,int ,int ) ;
 scalar_t__ usbd_req_set_report (int ,int *,scalar_t__*,int ,int ,int ,int ) ;

__attribute__((used)) static usb_error_t
wsp_set_device_mode(struct wsp_softc *sc, uint8_t on)
{
 const struct wsp_dev_params *params = sc->sc_params;
 uint8_t mode_bytes[8];
 usb_error_t err;


 if (params->tp_type == TYPE3)
  return 0;

 err = usbd_req_get_report(sc->sc_usb_device, ((void*)0),
     mode_bytes, params->um_size, params->iface_index,
     params->um_req_val, params->um_req_idx);

 if (err != USB_ERR_NORMAL_COMPLETION) {
  DPRINTF("Failed to read device mode (%d)\n", err);
  return (err);
 }







 pause("WHW", hz / 4);

 mode_bytes[params->um_switch_idx] =
     on ? params->um_switch_on : params->um_switch_off;

 return (usbd_req_set_report(sc->sc_usb_device, ((void*)0),
     mode_bytes, params->um_size, params->iface_index,
     params->um_req_val, params->um_req_idx));
}
