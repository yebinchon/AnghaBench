
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct time_regs {int dummy; } ;
struct ds13rtc_softc {int secaddr; int dev; } ;


 int IIC_WAIT ;
 int iicdev_writeto (int ,int ,struct time_regs*,int,int ) ;

__attribute__((used)) static int
write_timeregs(struct ds13rtc_softc *sc, struct time_regs *tregs)
{

 return (iicdev_writeto(sc->dev, sc->secaddr, tregs,
     sizeof(*tregs), IIC_WAIT));
}
