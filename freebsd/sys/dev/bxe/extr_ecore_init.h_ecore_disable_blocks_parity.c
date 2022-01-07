
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
struct bxe_softc {int dummy; } ;
struct TYPE_3__ {int name; int mask_addr; } ;


 int ARRSIZE (TYPE_1__*) ;
 int ECORE_MSG (struct bxe_softc*,char*,int ,scalar_t__) ;
 int FALSE ;
 int REG_WR (struct bxe_softc*,int ,scalar_t__) ;
 TYPE_1__* ecore_blocks_parity_data ;
 scalar_t__ ecore_parity_reg_mask (struct bxe_softc*,int) ;
 int ecore_set_mcp_parity (struct bxe_softc*,int ) ;

__attribute__((used)) static inline void ecore_disable_blocks_parity(struct bxe_softc *sc)
{
 int i;

 for (i = 0; i < ARRSIZE(ecore_blocks_parity_data); i++) {
  uint32_t dis_mask = ecore_parity_reg_mask(sc, i);

  if (dis_mask) {
   REG_WR(sc, ecore_blocks_parity_data[i].mask_addr,
          dis_mask);
   ECORE_MSG(sc, "Setting parity mask "
       "for %s to\t\t0x%x\n",
        ecore_blocks_parity_data[i].name, dis_mask);
  }
 }


 ecore_set_mcp_parity(sc, FALSE);
}
