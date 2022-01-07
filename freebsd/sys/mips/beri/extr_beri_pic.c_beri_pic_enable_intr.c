
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
struct intr_irqsrc {int dummy; } ;
struct beripic_softc {int * res; } ;
struct beri_pic_isrc {int mips_hard_irq; int irq; } ;
typedef int device_t ;


 size_t BP_CFG ;
 int BP_CFG_ENABLE ;
 int BP_CFG_IRQ_S ;
 int bus_write_8 (int ,int,int) ;
 struct beripic_softc* device_get_softc (int ) ;

__attribute__((used)) static void
beri_pic_enable_intr(device_t dev, struct intr_irqsrc *isrc)
{
 struct beri_pic_isrc *pic_isrc;
 struct beripic_softc *sc;
 uint64_t reg;

 sc = device_get_softc(dev);
 pic_isrc = (struct beri_pic_isrc *)isrc;

 reg = BP_CFG_ENABLE;
 reg |= (pic_isrc->mips_hard_irq << BP_CFG_IRQ_S);
 bus_write_8(sc->res[BP_CFG], pic_isrc->irq * 8, reg);
}
