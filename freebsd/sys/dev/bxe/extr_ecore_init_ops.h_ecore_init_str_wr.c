
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct bxe_softc {int dummy; } ;


 int REG_WR (struct bxe_softc*,int,int const) ;

__attribute__((used)) static void ecore_init_str_wr(struct bxe_softc *sc, uint32_t addr,
         const uint32_t *data, uint32_t len)
{
 uint32_t i;

 for (i = 0; i < len; i++)
  REG_WR(sc, addr + i*4, data[i]);
}
