
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct uftdi_softc {int sc_bcdDevice; } ;
struct uftdi_eeio {int dummy; } ;
struct uftdi_bitmode {int iomask; int mode; } ;
struct ucom_softc {struct uftdi_softc* sc_parent; } ;
struct thread {int dummy; } ;
typedef scalar_t__ caddr_t ;


 int EIO ;
 int ENOIOCTL ;
 int FTDI_SIO_RESET_PURGE_RX ;
 int FTDI_SIO_RESET_PURGE_TX ;
 int FTDI_SIO_RESET_SIO ;
 int USB_ERR_NORMAL_COMPLETION ;
 int uftdi_erase_eeprom (struct ucom_softc*,int) ;
 int uftdi_get_bitmode (struct ucom_softc*,int *,int *) ;
 int uftdi_get_latency (struct ucom_softc*,int*) ;
 int uftdi_read_eeprom (struct ucom_softc*,struct uftdi_eeio*) ;
 int uftdi_reset (struct ucom_softc*,int ) ;
 int uftdi_set_bitmode (struct ucom_softc*,int ,int ) ;
 int uftdi_set_error_char (struct ucom_softc*,int) ;
 int uftdi_set_event_char (struct ucom_softc*,int) ;
 int uftdi_set_latency (struct ucom_softc*,int) ;
 int uftdi_write_eeprom (struct ucom_softc*,struct uftdi_eeio*) ;

__attribute__((used)) static int
uftdi_ioctl(struct ucom_softc *ucom, uint32_t cmd, caddr_t data,
    int flag, struct thread *td)
{
 struct uftdi_softc *sc = ucom->sc_parent;
 int err;
 struct uftdi_bitmode * mode;

 switch (cmd) {
 case 135:
 case 134:
 case 133:
  err = uftdi_reset(ucom,
      cmd == 135 ? FTDI_SIO_RESET_SIO :
      (cmd == 134 ? FTDI_SIO_RESET_PURGE_RX :
      FTDI_SIO_RESET_PURGE_TX));
  break;
 case 132:
  mode = (struct uftdi_bitmode *)data;
  err = uftdi_set_bitmode(ucom, mode->mode, mode->iomask);
  break;
 case 139:
  mode = (struct uftdi_bitmode *)data;
  err = uftdi_get_bitmode(ucom, &mode->mode, &mode->iomask);
  break;
 case 129:
  err = uftdi_set_latency(ucom, *((int *)data));
  break;
 case 137:
  err = uftdi_get_latency(ucom, (int *)data);
  break;
 case 131:
  err = uftdi_set_error_char(ucom, *(int *)data);
  break;
 case 130:
  err = uftdi_set_event_char(ucom, *(int *)data);
  break;
 case 138:
  *(int *)data = sc->sc_bcdDevice;
  err = 0;
  break;
 case 136:
  err = uftdi_read_eeprom(ucom, (struct uftdi_eeio *)data);
  break;
 case 128:
  err = uftdi_write_eeprom(ucom, (struct uftdi_eeio *)data);
  break;
 case 140:
  err = uftdi_erase_eeprom(ucom, *(int *)data);
  break;
 default:
  return (ENOIOCTL);
 }
 if (err != USB_ERR_NORMAL_COMPLETION)
  return (EIO);
 return (0);
}
