
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint16_t ;
struct udl_softc {int dummy; } ;


 int UDL_CTRL_CMD_READ_EDID ;
 int USB_ERR_NORMAL_COMPLETION ;
 int UT_READ_VENDOR_DEVICE ;
 int bcopy (int *,int *,int) ;
 int udl_ctrl_msg (struct udl_softc*,int ,int ,int,int,int *,int) ;

__attribute__((used)) static int
udl_read_edid(struct udl_softc *sc, uint8_t *buf)
{
 uint8_t lbuf[64];
 uint16_t offset;
 int error;

 offset = 0;

 error = udl_ctrl_msg(sc, UT_READ_VENDOR_DEVICE,
     UDL_CTRL_CMD_READ_EDID, 0x00a1, (offset << 8), lbuf, 64);
 if (error != USB_ERR_NORMAL_COMPLETION)
  goto fail;
 bcopy(lbuf + 1, buf + offset, 63);
 offset += 63;

 error = udl_ctrl_msg(sc, UT_READ_VENDOR_DEVICE,
     UDL_CTRL_CMD_READ_EDID, 0x00a1, (offset << 8), lbuf, 64);
 if (error != USB_ERR_NORMAL_COMPLETION)
  goto fail;
 bcopy(lbuf + 1, buf + offset, 63);
 offset += 63;

 error = udl_ctrl_msg(sc, UT_READ_VENDOR_DEVICE,
     UDL_CTRL_CMD_READ_EDID, 0x00a1, (offset << 8), lbuf, 3);
 if (error != USB_ERR_NORMAL_COMPLETION)
  goto fail;
 bcopy(lbuf + 1, buf + offset, 2);
fail:
 return (error);
}
