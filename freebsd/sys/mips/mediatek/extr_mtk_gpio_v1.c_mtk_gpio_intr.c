
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct mtk_gpio_softc {int dev; } ;
struct TYPE_2__ {int td_intr_frame; } ;


 int FILTER_HANDLED ;
 int GPIO_PIOINT ;
 int MTK_READ_4 (struct mtk_gpio_softc*,int ) ;
 int MTK_WRITE_4 (struct mtk_gpio_softc*,int ,int) ;
 int PIC_INTR_ISRC (struct mtk_gpio_softc*,int) ;
 TYPE_1__* curthread ;
 int device_printf (int ,char*,int) ;
 scalar_t__ intr_isrc_dispatch (int ,int ) ;

__attribute__((used)) static int
mtk_gpio_intr(void *arg)
{
 struct mtk_gpio_softc *sc;
 uint32_t i, interrupts;

 sc = arg;
 interrupts = MTK_READ_4(sc, GPIO_PIOINT);
 MTK_WRITE_4(sc, GPIO_PIOINT, interrupts);

 for (i = 0; interrupts != 0; i++, interrupts >>= 1) {
  if ((interrupts & 0x1) == 0)
   continue;
  if (intr_isrc_dispatch(PIC_INTR_ISRC(sc, i),
      curthread->td_intr_frame) != 0) {
   device_printf(sc->dev, "spurious interrupt %d\n", i);
  }
 }

 return (FILTER_HANDLED);
}
