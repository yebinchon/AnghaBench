
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct bxe_softc {int dummy; } ;


 int bxe_reg_wr_ind (struct bxe_softc*,int ,int ) ;

__attribute__((used)) static void
ecore_reg_wr_ind(struct bxe_softc *sc,
                 uint32_t addr,
                 uint32_t val)
{
    bxe_reg_wr_ind(sc, addr, val);
}
