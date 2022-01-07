
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned int u_int ;
struct mtk_pic_softc {int dummy; } ;


 int MTK_INTENA ;
 int WRITE4 (struct mtk_pic_softc*,int ,unsigned int) ;

__attribute__((used)) static inline void
pic_irq_unmask(struct mtk_pic_softc *sc, u_int irq)
{

 WRITE4(sc, MTK_INTENA, (1u << (irq)));
}
