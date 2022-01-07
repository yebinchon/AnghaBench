
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct isl12xx_softc {int dev; } ;


 int WAITFLAGS ;
 int iicdev_writeto (int ,int ,int *,int,int ) ;

__attribute__((used)) static inline int
isl12xx_write1(struct isl12xx_softc *sc, uint8_t reg, uint8_t val)
{

 return (iicdev_writeto(sc->dev, reg, &val, 1, WAITFLAGS));
}
