
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct atiixp_chinfo {int enable_bit; int parent; } ;


 int ATI_REG_CMD ;
 int atiixp_rd (int ,int ) ;
 int atiixp_wr (int ,int ,int) ;

__attribute__((used)) static void
atiixp_disable_dma(struct atiixp_chinfo *ch)
{
 uint32_t value;

 value = atiixp_rd(ch->parent, ATI_REG_CMD);
 if (value & ch->enable_bit) {
  value &= ~ch->enable_bit;
  atiixp_wr(ch->parent, ATI_REG_CMD, value);
 }
}
