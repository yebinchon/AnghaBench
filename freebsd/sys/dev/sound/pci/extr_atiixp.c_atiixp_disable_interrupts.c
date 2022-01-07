
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct atiixp_info {int dummy; } ;


 int ATI_REG_IER ;
 int ATI_REG_ISR ;
 int atiixp_wr (struct atiixp_info*,int ,int) ;

__attribute__((used)) static void
atiixp_disable_interrupts(struct atiixp_info *sc)
{

 atiixp_wr(sc, ATI_REG_IER, 0);


 atiixp_wr(sc, ATI_REG_ISR, 0xffffffff);
}
