
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint32_t ;
struct udl_softc {int dummy; } ;
typedef int lbuf ;


 int UDL_CTRL_CMD_POLL ;
 int USB_ERR_NORMAL_COMPLETION ;
 int UT_READ_VENDOR_DEVICE ;
 int le32toh (int ) ;
 int udl_ctrl_msg (struct udl_softc*,int ,int ,int,int,int *,int) ;

__attribute__((used)) static int
udl_poll(struct udl_softc *sc, uint32_t *buf)
{
 uint32_t lbuf;
 int error;

 error = udl_ctrl_msg(sc, UT_READ_VENDOR_DEVICE,
     UDL_CTRL_CMD_POLL, 0x0000, 0x0000, (uint8_t *)&lbuf, sizeof(lbuf));
 if (error == USB_ERR_NORMAL_COMPLETION)
  *buf = le32toh(lbuf);
 return (error);
}
