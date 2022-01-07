
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct udl_softc {int dummy; } ;


 int UDL_CTRL_CMD_SET_KEY ;
 int UT_WRITE_VENDOR_DEVICE ;
 int udl_ctrl_msg (struct udl_softc*,int ,int ,int,int,int *,int ) ;

__attribute__((used)) static int
udl_set_enc_key(struct udl_softc *sc, uint8_t *buf, uint8_t len)
{
 int error;

 error = udl_ctrl_msg(sc, UT_WRITE_VENDOR_DEVICE,
     UDL_CTRL_CMD_SET_KEY, 0x0000, 0x0000, buf, len);
 return (error);
}
