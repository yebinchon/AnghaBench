
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
struct bxe_softc {int dummy; } ;
struct TYPE_3__ {int e3; int e2; int e1h; int e1; } ;
struct TYPE_4__ {TYPE_1__ reg_mask; } ;


 scalar_t__ CHIP_IS_E1 (struct bxe_softc*) ;
 scalar_t__ CHIP_IS_E1H (struct bxe_softc*) ;
 scalar_t__ CHIP_IS_E2 (struct bxe_softc*) ;
 TYPE_2__* ecore_blocks_parity_data ;

__attribute__((used)) static inline uint32_t ecore_parity_reg_mask(struct bxe_softc *sc, int idx)
{
 if (CHIP_IS_E1(sc))
  return ecore_blocks_parity_data[idx].reg_mask.e1;
 else if (CHIP_IS_E1H(sc))
  return ecore_blocks_parity_data[idx].reg_mask.e1h;
 else if (CHIP_IS_E2(sc))
  return ecore_blocks_parity_data[idx].reg_mask.e2;
 else
  return ecore_blocks_parity_data[idx].reg_mask.e3;
}
