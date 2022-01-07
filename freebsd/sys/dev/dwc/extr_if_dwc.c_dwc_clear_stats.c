
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct dwc_softc {int dummy; } ;


 int MMC_CONTROL ;
 int MMC_CONTROL_CNTRST ;
 int READ4 (struct dwc_softc*,int ) ;
 int WRITE4 (struct dwc_softc*,int ,int ) ;

__attribute__((used)) static void dwc_clear_stats(struct dwc_softc *sc)
{
 uint32_t reg;

 reg = READ4(sc, MMC_CONTROL);
 reg |= (MMC_CONTROL_CNTRST);
 WRITE4(sc, MMC_CONTROL, reg);
}
