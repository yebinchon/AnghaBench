
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct iic_msg {int slave; int len; int* buf; int flags; } ;
struct ads111x_softc {int dev; } ;
typedef int data ;


 int IIC_M_WR ;
 int IIC_WAIT ;
 int be16enc (int*,int) ;
 int iicbus_get_addr (int ) ;
 int iicbus_transfer_excl (int ,struct iic_msg*,int ,int ) ;
 int nitems (struct iic_msg*) ;

__attribute__((used)) static int
ads111x_write_2(struct ads111x_softc *sc, int reg, int val)
{
 uint8_t data[3];
 struct iic_msg msgs[1];
 uint8_t slaveaddr;

 slaveaddr = iicbus_get_addr(sc->dev);

 data[0] = reg;
 be16enc(&data[1], val);

 msgs[0].slave = slaveaddr;
 msgs[0].flags = IIC_M_WR;
 msgs[0].len = sizeof(data);
 msgs[0].buf = data;

 return (iicbus_transfer_excl(sc->dev, msgs, nitems(msgs), IIC_WAIT));
}
