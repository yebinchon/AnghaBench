
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint32_t ;
typedef scalar_t__ time_t ;
struct ds13rtc_softc {int secaddr; int dev; } ;
typedef int buf ;


 int IIC_WAIT ;
 int iicdev_writeto (int ,int ,int *,int,int ) ;
 int le32enc (int *,int ) ;

__attribute__((used)) static int
write_timeword(struct ds13rtc_softc *sc, time_t secs)
{
 uint8_t buf[4];

 le32enc(buf, (uint32_t)secs);
 return (iicdev_writeto(sc->dev, sc->secaddr, buf, sizeof(buf),
     IIC_WAIT));
}
