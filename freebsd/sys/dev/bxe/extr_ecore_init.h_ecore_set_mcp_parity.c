
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ uint8_t ;
typedef int uint32_t ;
struct bxe_softc {int dummy; } ;
struct TYPE_3__ {int addr; } ;


 int ARRSIZE (TYPE_1__*) ;
 int MISC_AEU_ENABLE_MCP_PRTY_BITS ;
 int REG_RD (struct bxe_softc*,int ) ;
 int REG_WR (struct bxe_softc*,int ,int ) ;
 TYPE_1__* mcp_attn_ctl_regs ;

__attribute__((used)) static inline void ecore_set_mcp_parity(struct bxe_softc *sc, uint8_t enable)
{
 int i;
 uint32_t reg_val;

 for (i = 0; i < ARRSIZE(mcp_attn_ctl_regs); i++) {
  reg_val = REG_RD(sc, mcp_attn_ctl_regs[i].addr);

  if (enable)
   reg_val |= MISC_AEU_ENABLE_MCP_PRTY_BITS;
  else
   reg_val &= ~MISC_AEU_ENABLE_MCP_PRTY_BITS;

  REG_WR(sc, mcp_attn_ctl_regs[i].addr, reg_val);
 }
}
