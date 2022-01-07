
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;


 int MMC_OCR_MAX_VOLTAGE_SHIFT ;
 int MMC_OCR_MIN_VOLTAGE_SHIFT ;

__attribute__((used)) static int
mmc_highest_voltage(uint32_t ocr)
{
 int i;

 for (i = MMC_OCR_MAX_VOLTAGE_SHIFT;
     i >= MMC_OCR_MIN_VOLTAGE_SHIFT; i--)
  if (ocr & (1 << i))
   return (i);
 return (-1);
}
