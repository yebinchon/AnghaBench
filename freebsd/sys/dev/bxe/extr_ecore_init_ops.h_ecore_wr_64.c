
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct bxe_softc {int dummy; } ;


 int REG_WR_DMAE_LEN (struct bxe_softc*,int ,int *,int) ;

__attribute__((used)) static void ecore_wr_64(struct bxe_softc *sc, uint32_t reg, uint32_t val_lo,
   uint32_t val_hi)
{
 uint32_t wb_write[2];

 wb_write[0] = val_lo;
 wb_write[1] = val_hi;
 REG_WR_DMAE_LEN(sc, reg, wb_write, 2);
}
