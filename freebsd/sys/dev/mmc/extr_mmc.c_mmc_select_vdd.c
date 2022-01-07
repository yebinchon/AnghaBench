
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct mmc_softc {int dummy; } ;


 int MMC_OCR_VOLTAGE ;

__attribute__((used)) static uint32_t
mmc_select_vdd(struct mmc_softc *sc, uint32_t ocr)
{

 return (ocr & MMC_OCR_VOLTAGE);
}
