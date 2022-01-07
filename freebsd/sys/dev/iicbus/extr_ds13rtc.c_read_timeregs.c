
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct time_regs {int dummy; } ;
struct ds13rtc_softc {int secaddr; int dev; } ;


 int IIC_WAIT ;
 int iicdev_readfrom (int ,int ,struct time_regs*,int,int ) ;

__attribute__((used)) static int
read_timeregs(struct ds13rtc_softc *sc, struct time_regs *tregs)
{
 int err;

 if ((err = iicdev_readfrom(sc->dev, sc->secaddr, tregs,
     sizeof(*tregs), IIC_WAIT)) != 0)
  return (err);

 return (err);
}
