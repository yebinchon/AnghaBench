
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct bxe_softc {int dummy; } ;


 scalar_t__ CHIP_IS_E1 (struct bxe_softc*) ;
 scalar_t__ DMAE_READY (struct bxe_softc*) ;
 int VIRT_WR_DMAE_LEN (struct bxe_softc*,int const*,int ,int ,int ) ;
 int ecore_init_ind_wr (struct bxe_softc*,int ,int const*,int ) ;
 int ecore_init_str_wr (struct bxe_softc*,int ,int const*,int ) ;

__attribute__((used)) static void ecore_init_wr_wb(struct bxe_softc *sc, uint32_t addr,
        const uint32_t *data, uint32_t len)
{
 if (DMAE_READY(sc))
  VIRT_WR_DMAE_LEN(sc, data, addr, len, 0);


 else if (CHIP_IS_E1(sc))
  ecore_init_ind_wr(sc, addr, data, len);


 else
  ecore_init_str_wr(sc, addr, data, len);
}
