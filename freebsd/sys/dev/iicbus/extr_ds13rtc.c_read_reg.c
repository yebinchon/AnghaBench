
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct ds13rtc_softc {int dev; } ;


 int IIC_WAIT ;
 int iicdev_readfrom (int ,int ,int *,int,int ) ;

__attribute__((used)) static int
read_reg(struct ds13rtc_softc *sc, uint8_t reg, uint8_t *val)
{

 return (iicdev_readfrom(sc->dev, reg, val, sizeof(*val), IIC_WAIT));
}
