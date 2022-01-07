
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct atiixp_info {int dummy; } ;


 int ATI_REG_IER ;
 int ATI_REG_IER_IN_XRUN_EN ;
 int ATI_REG_IER_IO_STATUS_EN ;
 int ATI_REG_IER_OUT_XRUN_EN ;
 int ATI_REG_IER_SPDF_STATUS_EN ;
 int ATI_REG_IER_SPDF_XRUN_EN ;
 int ATI_REG_ISR ;
 int atiixp_rd (struct atiixp_info*,int ) ;
 int atiixp_wr (struct atiixp_info*,int ,int) ;

__attribute__((used)) static void
atiixp_enable_interrupts(struct atiixp_info *sc)
{
 uint32_t value;


 atiixp_wr(sc, ATI_REG_ISR, 0xffffffff);


 value = atiixp_rd(sc, ATI_REG_IER);

 value |= ATI_REG_IER_IO_STATUS_EN;






 value &= ~(ATI_REG_IER_IN_XRUN_EN | ATI_REG_IER_OUT_XRUN_EN |
     ATI_REG_IER_SPDF_XRUN_EN | ATI_REG_IER_SPDF_STATUS_EN);
 atiixp_wr(sc, ATI_REG_IER, value);
}
