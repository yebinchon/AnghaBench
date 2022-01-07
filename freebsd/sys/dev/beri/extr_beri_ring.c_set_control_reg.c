
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint32_t ;
typedef int uint16_t ;
struct beri_softc {scalar_t__ control_read; scalar_t__ control_write; } ;
typedef int control_reg_t ;


 int WRITE4 (struct beri_softc*,scalar_t__,scalar_t__) ;

__attribute__((used)) static void
set_control_reg(struct beri_softc *sc, int dir, control_reg_t *c)
{
 uint32_t offset;
 uint16_t src[4];
 uint16_t *cp;
 int i;

 cp = (uint16_t *)c;

 for (i = 0; i < 4; i++)
  src[3 - i] = cp[i];

 offset = dir ? sc->control_write : sc->control_read;
 WRITE4(sc, offset + 0, ((uint32_t *)src)[0]);
 WRITE4(sc, offset + 4, ((uint32_t *)src)[1]);
}
