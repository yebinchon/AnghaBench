
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint16_t ;
struct udl_softc {int dummy; } ;


 int UDL_CTRL_CMD_WRITE_1 ;
 int UT_WRITE_VENDOR_DEVICE ;
 int udl_ctrl_msg (struct udl_softc*,int ,int ,int ,int,int *,int) ;

__attribute__((used)) static int
udl_write_1(struct udl_softc *sc, uint16_t addr, uint8_t buf)
{
 int error;

 error = udl_ctrl_msg(sc, UT_WRITE_VENDOR_DEVICE,
     UDL_CTRL_CMD_WRITE_1, addr, 0x0000, &buf, 1);
 return (error);
}
