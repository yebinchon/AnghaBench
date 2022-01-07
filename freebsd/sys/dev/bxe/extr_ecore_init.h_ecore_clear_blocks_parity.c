
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
struct bxe_softc {int dummy; } ;
struct TYPE_3__ {int name; int sts_clr_addr; } ;


 int AEU_INPUTS_ATTN_BITS_MCP_LATCHED_ROM_PARITY ;
 int AEU_INPUTS_ATTN_BITS_MCP_LATCHED_SCPAD_PARITY ;
 int AEU_INPUTS_ATTN_BITS_MCP_LATCHED_UMP_RX_PARITY ;
 int AEU_INPUTS_ATTN_BITS_MCP_LATCHED_UMP_TX_PARITY ;
 int ARRSIZE (TYPE_1__*) ;
 scalar_t__ CSEM_REG_FAST_MEMORY ;
 int ECORE_MSG (struct bxe_softc*,char*,int,...) ;
 int MISC_REG_AEU_AFTER_INVERT_4_MCP ;
 scalar_t__ MISC_REG_AEU_CLR_LATCH_SIGNAL ;
 int REG_RD (struct bxe_softc*,int ) ;
 int REG_WR (struct bxe_softc*,scalar_t__,int) ;
 scalar_t__ SEM_FAST_REG_PARITY_RST ;
 scalar_t__ TSEM_REG_FAST_MEMORY ;
 scalar_t__ USEM_REG_FAST_MEMORY ;
 scalar_t__ XSEM_REG_FAST_MEMORY ;
 TYPE_1__* ecore_blocks_parity_data ;
 int ecore_parity_reg_mask (struct bxe_softc*,int) ;

__attribute__((used)) static inline void ecore_clear_blocks_parity(struct bxe_softc *sc)
{
 int i;
 uint32_t reg_val, mcp_aeu_bits =
  AEU_INPUTS_ATTN_BITS_MCP_LATCHED_ROM_PARITY |
  AEU_INPUTS_ATTN_BITS_MCP_LATCHED_SCPAD_PARITY |
  AEU_INPUTS_ATTN_BITS_MCP_LATCHED_UMP_RX_PARITY |
  AEU_INPUTS_ATTN_BITS_MCP_LATCHED_UMP_TX_PARITY;


 REG_WR(sc, XSEM_REG_FAST_MEMORY + SEM_FAST_REG_PARITY_RST, 0x1);
 REG_WR(sc, TSEM_REG_FAST_MEMORY + SEM_FAST_REG_PARITY_RST, 0x1);
 REG_WR(sc, USEM_REG_FAST_MEMORY + SEM_FAST_REG_PARITY_RST, 0x1);
 REG_WR(sc, CSEM_REG_FAST_MEMORY + SEM_FAST_REG_PARITY_RST, 0x1);

 for (i = 0; i < ARRSIZE(ecore_blocks_parity_data); i++) {
  uint32_t reg_mask = ecore_parity_reg_mask(sc, i);

  if (reg_mask) {
   reg_val = REG_RD(sc, ecore_blocks_parity_data[i].
      sts_clr_addr);
   if (reg_val & reg_mask)
    ECORE_MSG(sc,
        "Parity errors in %s: 0x%x\n",
        ecore_blocks_parity_data[i].name,
        reg_val & reg_mask);
  }
 }


 reg_val = REG_RD(sc, MISC_REG_AEU_AFTER_INVERT_4_MCP);
 if (reg_val & mcp_aeu_bits)
  ECORE_MSG(sc, "Parity error in MCP: 0x%x\n",
      reg_val & mcp_aeu_bits);







 REG_WR(sc, MISC_REG_AEU_CLR_LATCH_SIGNAL, 0x780);
}
