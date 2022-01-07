
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ usb_error_t ;
typedef scalar_t__ uint8_t ;
struct atp_softc {scalar_t__ sc_family; scalar_t__* sc_mode_bytes; int sc_usb_device; } ;
typedef scalar_t__ interface_mode ;


 int DPRINTF (char*,scalar_t__) ;
 scalar_t__ HID_MODE ;
 scalar_t__ RAW_SENSOR_MODE ;
 scalar_t__ TRACKPAD_FAMILY_FOUNTAIN_GEYSER ;
 scalar_t__ USB_ERR_INVAL ;
 scalar_t__ USB_ERR_NORMAL_COMPLETION ;
 int hz ;
 int pause (char*,int) ;
 scalar_t__ usbd_req_get_report (int ,int *,scalar_t__*,int,int ,int,int) ;
 scalar_t__ usbd_req_set_report (int ,int *,scalar_t__*,int,int ,int,int) ;

__attribute__((used)) static usb_error_t
atp_set_device_mode(struct atp_softc *sc, interface_mode newMode)
{
 uint8_t mode_value;
 usb_error_t err;

 if ((newMode != RAW_SENSOR_MODE) && (newMode != HID_MODE))
  return (USB_ERR_INVAL);

 if ((newMode == RAW_SENSOR_MODE) &&
     (sc->sc_family == TRACKPAD_FAMILY_FOUNTAIN_GEYSER))
  mode_value = (uint8_t)0x04;
 else
  mode_value = newMode;

 err = usbd_req_get_report(sc->sc_usb_device, ((void*)0) ,
     sc->sc_mode_bytes, sizeof(sc->sc_mode_bytes), 0 ,
     0x03 , 0x00 );
 if (err != USB_ERR_NORMAL_COMPLETION) {
  DPRINTF("Failed to read device mode (%d)\n", err);
  return (err);
 }

 if (sc->sc_mode_bytes[0] == mode_value)
  return (err);







 pause("WHW", hz / 4);

 sc->sc_mode_bytes[0] = mode_value;
 return (usbd_req_set_report(sc->sc_usb_device, ((void*)0) ,
     sc->sc_mode_bytes, sizeof(sc->sc_mode_bytes), 0 ,
     0x03 , 0x00 ));
}
