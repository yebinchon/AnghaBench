
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct twsi_softc {int reg_control; int dev; } ;


 int TWSI_CONTROL_START ;
 int TWSI_CONTROL_STOP ;
 int TWSI_READ (struct twsi_softc*,int ) ;
 int TWSI_WRITE (struct twsi_softc*,int ,int) ;
 int debugf (int ,char*,int) ;

__attribute__((used)) static __inline void
twsi_control_clear(struct twsi_softc *sc, uint32_t mask)
{
 uint32_t val;

 val = TWSI_READ(sc, sc->reg_control);
 debugf(sc->dev, "read val=%x\n", val);
 val &= ~(TWSI_CONTROL_STOP | TWSI_CONTROL_START);
 val &= ~mask;
 debugf(sc->dev, "write val=%x\n", val);
 TWSI_WRITE(sc, sc->reg_control, val);
}
