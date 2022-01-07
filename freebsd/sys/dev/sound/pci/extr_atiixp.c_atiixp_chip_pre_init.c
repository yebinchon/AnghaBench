
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct atiixp_info {scalar_t__ codec_not_ready_bits; } ;


 int ATI_REG_CMD ;
 int ATI_REG_CMD_IN_DMA_EN ;
 int ATI_REG_CMD_OUT_DMA_EN ;
 int ATI_REG_CMD_SPDF_OUT_EN ;
 int ATI_REG_IER ;
 int CODEC_CHECK_BITS ;
 int atiixp_disable_interrupts (struct atiixp_info*) ;
 int atiixp_lock (struct atiixp_info*) ;
 int atiixp_rd (struct atiixp_info*,int ) ;
 int atiixp_reset_aclink (struct atiixp_info*) ;
 int atiixp_unlock (struct atiixp_info*) ;
 int atiixp_wr (struct atiixp_info*,int ,int) ;

__attribute__((used)) static void
atiixp_chip_pre_init(struct atiixp_info *sc)
{
 uint32_t value;

 atiixp_lock(sc);


 atiixp_disable_interrupts(sc);


 value = atiixp_rd(sc, ATI_REG_CMD);
 value &= ~(ATI_REG_CMD_IN_DMA_EN | ATI_REG_CMD_OUT_DMA_EN |
     ATI_REG_CMD_SPDF_OUT_EN );
 atiixp_wr(sc, ATI_REG_CMD, value);


 atiixp_reset_aclink(sc);

 sc->codec_not_ready_bits = 0;


 atiixp_wr(sc, ATI_REG_IER, CODEC_CHECK_BITS);

 atiixp_unlock(sc);
}
