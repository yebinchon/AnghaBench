
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct bxe_softc {int dummy; } ;


 int ecore_reg_wr_ind (struct bxe_softc*,int,int const) ;

__attribute__((used)) static void ecore_init_ind_wr(struct bxe_softc *sc, uint32_t addr,
         const uint32_t *data, uint32_t len)
{
 uint32_t i;

 for (i = 0; i < len; i++)
  ecore_reg_wr_ind(sc, addr + i*4, data[i]);
}
