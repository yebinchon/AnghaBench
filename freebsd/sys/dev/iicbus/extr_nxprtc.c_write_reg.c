
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int val ;
typedef int uint8_t ;
struct nxprtc_softc {int dev; } ;


 int WAITFLAGS ;
 int iicdev_writeto (int ,int ,int *,int,int ) ;

__attribute__((used)) static int
write_reg(struct nxprtc_softc *sc, uint8_t reg, uint8_t val)
{

 return (iicdev_writeto(sc->dev, reg, &val, sizeof(val), WAITFLAGS));
}
