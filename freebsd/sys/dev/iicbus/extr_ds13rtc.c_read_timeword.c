
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int time_t ;
struct ds13rtc_softc {int secaddr; int dev; } ;
typedef int buf ;


 int IIC_WAIT ;
 int iicdev_readfrom (int ,int ,int *,int,int ) ;
 int le32dec (int *) ;

__attribute__((used)) static int
read_timeword(struct ds13rtc_softc *sc, time_t *secs)
{
 int err;
 uint8_t buf[4];

 if ((err = iicdev_readfrom(sc->dev, sc->secaddr, buf, sizeof(buf),
     IIC_WAIT)) == 0)
  *secs = le32dec(buf);

 return (err);
}
