
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;
struct jz4780_pic_softc {int dummy; } ;


 int JZ_ICMSR0 ;
 int JZ_ICMSR1 ;
 int WRITE4 (struct jz4780_pic_softc*,int ,unsigned int) ;

__attribute__((used)) static inline void
pic_irq_mask(struct jz4780_pic_softc *sc, u_int irq)
{
 if (irq < 32)
  WRITE4(sc, JZ_ICMSR0, (1u << irq));
 else
  WRITE4(sc, JZ_ICMSR1, (1u << (irq - 32)));
}
