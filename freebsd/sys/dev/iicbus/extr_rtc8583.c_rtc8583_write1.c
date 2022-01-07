
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct rtc8583_softc {int dev; } ;


 int IIC_WAIT ;
 int rtc8583_writeto (int ,int ,int *,int,int ) ;

__attribute__((used)) static inline int
rtc8583_write1(struct rtc8583_softc *sc, uint8_t reg, uint8_t val)
{

 return (rtc8583_writeto(sc->dev, reg, &val, 1, IIC_WAIT));
}
