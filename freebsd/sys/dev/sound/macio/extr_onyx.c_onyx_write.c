
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int u_int ;
struct onyx_softc {int sc_dev; int sc_addr; } ;
struct iic_msg {int len; int * member_3; int member_2; int member_1; int member_0; } ;


 int IIC_M_WR ;
 int iicbus_transfer (int ,struct iic_msg*,int) ;

__attribute__((used)) static int
onyx_write(struct onyx_softc *sc, uint8_t reg, const uint8_t value)
{
 u_int size;
 uint8_t buf[16];

 struct iic_msg msg[] = {
  { sc->sc_addr, IIC_M_WR, 0, buf }
 };

 size = 1;
 msg[0].len = size + 1;
 buf[0] = reg;
 buf[1] = value;

 iicbus_transfer(sc->sc_dev, msg, 1);

 return (0);
}
