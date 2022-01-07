
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int wLength; int wIndex; int wValue; int bRequest; int bmRequestType; } ;
typedef TYPE_1__ usb_device_request_t ;
typedef scalar_t__ uint64_t ;
typedef int uint32_t ;
typedef scalar_t__ u_char ;
struct run_softc {int mac_ver; int sc_flags; int sc_dev; int sc_mtx; int sc_udev; } ;
struct firmware {int datasize; scalar_t__* data; } ;


 int EINVAL ;
 int ENOENT ;
 int ETIMEDOUT ;
 int FIRMWARE_UNLOAD ;
 int RT2860_H2M_BBPAGENT ;
 int RT2860_H2M_INTSRC ;
 int RT2860_H2M_MAILBOX ;
 int RT2860_H2M_MAILBOX_CID ;
 int RT2860_H2M_MAILBOX_STATUS ;
 int RT2860_MCU_CMD_RFRESET ;
 int RT2860_MCU_READY ;
 int RT2860_SYS_CTRL ;
 int RT2870_FW_BASE ;
 int RT2870_RESET ;
 int RUN_FLAG_FWLOAD_NEEDED ;
 int RUN_LOCK (struct run_softc*) ;
 int RUN_UNLOCK (struct run_softc*) ;
 int USETW (int ,int) ;
 int UT_WRITE_VENDOR_DEVICE ;
 scalar_t__ be64toh (int) ;
 int device_printf (int ,char*,...) ;
 struct firmware* firmware_get (char*) ;
 int firmware_put (struct firmware const*,int ) ;
 int run_delay (struct run_softc*,int) ;
 int run_mcu_cmd (struct run_softc*,int ,int ) ;
 int run_read (struct run_softc*,int ,int*) ;
 int run_write (struct run_softc*,int ,int) ;
 int run_write_region_1 (struct run_softc*,int ,scalar_t__ const*,int) ;
 int usbd_do_request (int ,int *,TYPE_1__*,int *) ;

__attribute__((used)) static int
run_load_microcode(struct run_softc *sc)
{
 usb_device_request_t req;
 const struct firmware *fw;
 const u_char *base;
 uint32_t tmp;
 int ntries, error;
 const uint64_t *temp;
 uint64_t bytes;

 RUN_UNLOCK(sc);
 fw = firmware_get("runfw");
 RUN_LOCK(sc);
 if (fw == ((void*)0)) {
  device_printf(sc->sc_dev,
      "failed loadfirmware of file %s\n", "runfw");
  return ENOENT;
 }

 if (fw->datasize != 8192) {
  device_printf(sc->sc_dev,
      "invalid firmware size (should be 8KB)\n");
  error = EINVAL;
  goto fail;
 }







 base = fw->data;
 if ((sc->mac_ver) != 0x2860 &&
     (sc->mac_ver) != 0x2872 &&
     (sc->mac_ver) != 0x3070) {
  base += 4096;
 }


 temp = fw->data;
 bytes = *temp;
 if (bytes != be64toh(0xffffff0210280210ULL)) {
  device_printf(sc->sc_dev, "firmware checksum failed\n");
  error = EINVAL;
  goto fail;
 }


 if (sc->sc_flags & RUN_FLAG_FWLOAD_NEEDED) {
  run_write_region_1(sc, RT2870_FW_BASE, base, 4096);
  run_write(sc, RT2860_H2M_MAILBOX_CID, 0xffffffff);
  run_write(sc, RT2860_H2M_MAILBOX_STATUS, 0xffffffff);
 }

 req.bmRequestType = UT_WRITE_VENDOR_DEVICE;
 req.bRequest = RT2870_RESET;
 USETW(req.wValue, 8);
 USETW(req.wIndex, 0);
 USETW(req.wLength, 0);
 if ((error = usbd_do_request(sc->sc_udev, &sc->sc_mtx, &req, ((void*)0)))
     != 0) {
  device_printf(sc->sc_dev, "firmware reset failed\n");
  goto fail;
 }

 run_delay(sc, 10);

 run_write(sc, RT2860_H2M_BBPAGENT, 0);
 run_write(sc, RT2860_H2M_MAILBOX, 0);
 run_write(sc, RT2860_H2M_INTSRC, 0);
 if ((error = run_mcu_cmd(sc, RT2860_MCU_CMD_RFRESET, 0)) != 0)
  goto fail;


 for (ntries = 0; ntries < 1000; ntries++) {
  if ((error = run_read(sc, RT2860_SYS_CTRL, &tmp)) != 0)
   goto fail;
  if (tmp & RT2860_MCU_READY)
   break;
  run_delay(sc, 10);
 }
 if (ntries == 1000) {
  device_printf(sc->sc_dev,
      "timeout waiting for MCU to initialize\n");
  error = ETIMEDOUT;
  goto fail;
 }
 device_printf(sc->sc_dev, "firmware %s ver. %u.%u loaded\n",
     (base == fw->data) ? "RT2870" : "RT3071",
     *(base + 4092), *(base + 4093));

fail:
 firmware_put(fw, FIRMWARE_UNLOAD);
 return (error);
}
