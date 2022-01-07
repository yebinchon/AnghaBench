
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct ads111x_softc {int dev; } ;
typedef int int16_t ;


 int IIC_WAIT ;
 scalar_t__ be16dec (int *) ;
 int iic2errno (int ) ;
 int iicdev_readfrom (int ,int,int *,int,int ) ;

__attribute__((used)) static int
ads111x_read_2(struct ads111x_softc *sc, int reg, int *val)
{
 int err;
 uint8_t data[2];

 err = iic2errno(iicdev_readfrom(sc->dev, reg, data, 2, IIC_WAIT));
 if (err == 0)
  *val = (int16_t)be16dec(data);

 return (err);
}
