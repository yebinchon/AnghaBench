
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
struct bxe_softc {int dummy; } ;
struct TYPE_3__ {int en_mask; int mask_addr; } ;


 int ARRSIZE (TYPE_1__*) ;
 int REG_WR (struct bxe_softc*,int ,int) ;
 int TRUE ;
 TYPE_1__* ecore_blocks_parity_data ;
 int ecore_parity_reg_mask (struct bxe_softc*,int) ;
 int ecore_set_mcp_parity (struct bxe_softc*,int ) ;

__attribute__((used)) static inline void ecore_enable_blocks_parity(struct bxe_softc *sc)
{
 int i;

 for (i = 0; i < ARRSIZE(ecore_blocks_parity_data); i++) {
  uint32_t reg_mask = ecore_parity_reg_mask(sc, i);

  if (reg_mask)
   REG_WR(sc, ecore_blocks_parity_data[i].mask_addr,
    ecore_blocks_parity_data[i].en_mask & reg_mask);
 }


 ecore_set_mcp_parity(sc, TRUE);
}
