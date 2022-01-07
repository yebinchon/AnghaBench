
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned int u_int ;
struct mtk_gic_softc {int dummy; } ;


 int MTK_INTDIS ;
 int WRITE4 (struct mtk_gic_softc*,int ,unsigned int) ;

__attribute__((used)) static inline void
gic_irq_mask(struct mtk_gic_softc *sc, u_int irq)
{

 WRITE4(sc, MTK_INTDIS, (1u << (irq)));
}
