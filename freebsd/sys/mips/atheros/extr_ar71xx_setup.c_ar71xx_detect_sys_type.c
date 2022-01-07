
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;





 int AR71XX_REV_ID_MINOR_MASK ;
 int AR71XX_REV_ID_REVISION_MASK ;
 int AR71XX_REV_ID_REVISION_SHIFT ;
 int AR71XX_RST_RESET_REG_REV_ID ;
 int AR71XX_SOC_AR7130 ;
 int AR71XX_SOC_AR7141 ;
 int AR71XX_SOC_AR7161 ;
 int AR71XX_SOC_AR7240 ;
 int AR71XX_SOC_AR7241 ;
 int AR71XX_SOC_AR7242 ;
 int AR71XX_SOC_AR9130 ;
 int AR71XX_SOC_AR9132 ;
 int AR71XX_SOC_AR9330 ;
 int AR71XX_SOC_AR9331 ;
 int AR71XX_SOC_AR9341 ;
 int AR71XX_SOC_AR9342 ;
 int AR71XX_SOC_AR9344 ;
 int AR71XX_SOC_QCA9533 ;
 int AR71XX_SOC_QCA9533_V2 ;
 int AR71XX_SOC_QCA9556 ;
 int AR71XX_SOC_QCA9558 ;
 int AR724X_REV_ID_REVISION_MASK ;


 int AR91XX_REV_ID_MINOR_MASK ;
 int AR91XX_REV_ID_REVISION_MASK ;
 int AR91XX_REV_ID_REVISION_SHIFT ;
 int AR933X_REV_ID_REVISION_MASK ;
 int AR934X_REV_ID_REVISION_MASK ;
 int ATH_READ_REG (int ) ;
 int QCA953X_REV_ID_REVISION_MASK ;
 int QCA955X_REV_ID_REVISION_MASK ;
 int REV_ID_MAJOR_MASK ;




 int ar71xx_chip_def ;
 int * ar71xx_cpu_ops ;
 int ar71xx_soc ;
 int ar71xx_sys_type ;
 int ar724x_chip_def ;
 int ar91xx_chip_def ;
 int ar933x_chip_def ;
 int ar934x_chip_def ;
 int panic (char*,int) ;
 int qca953x_chip_def ;
 int qca955x_chip_def ;
 int sprintf (int ,char*,char*,int) ;

void
ar71xx_detect_sys_type(void)
{
 char *chip = "????";
 uint32_t id;
 uint32_t major;
 uint32_t minor;
 uint32_t rev = 0;

 id = ATH_READ_REG(AR71XX_RST_RESET_REG_REV_ID);
 major = id & REV_ID_MAJOR_MASK;

 switch (major) {
 case 141:
  minor = id & AR71XX_REV_ID_MINOR_MASK;
  rev = id >> AR71XX_REV_ID_REVISION_SHIFT;
  rev &= AR71XX_REV_ID_REVISION_MASK;
  ar71xx_cpu_ops = &ar71xx_chip_def;
  switch (minor) {
  case 146:
   ar71xx_soc = AR71XX_SOC_AR7130;
   chip = "7130";
   break;

  case 145:
   ar71xx_soc = AR71XX_SOC_AR7141;
   chip = "7141";
   break;

  case 144:
   ar71xx_soc = AR71XX_SOC_AR7161;
   chip = "7161";
   break;
  }
  break;

 case 140:
  ar71xx_soc = AR71XX_SOC_AR7240;
  chip = "7240";
  ar71xx_cpu_ops = &ar724x_chip_def;
  rev = (id & AR724X_REV_ID_REVISION_MASK);
  break;

 case 139:
  ar71xx_soc = AR71XX_SOC_AR7241;
  chip = "7241";
  ar71xx_cpu_ops = &ar724x_chip_def;
  rev = (id & AR724X_REV_ID_REVISION_MASK);
  break;

 case 138:
  ar71xx_soc = AR71XX_SOC_AR7242;
  chip = "7242";
  ar71xx_cpu_ops = &ar724x_chip_def;
  rev = (id & AR724X_REV_ID_REVISION_MASK);
  break;

 case 137:
  minor = id & AR91XX_REV_ID_MINOR_MASK;
  rev = id >> AR91XX_REV_ID_REVISION_SHIFT;
  rev &= AR91XX_REV_ID_REVISION_MASK;
  ar71xx_cpu_ops = &ar91xx_chip_def;
  switch (minor) {
  case 143:
   ar71xx_soc = AR71XX_SOC_AR9130;
   chip = "9130";
   break;

  case 142:
   ar71xx_soc = AR71XX_SOC_AR9132;
   chip = "9132";
   break;
  }
  break;
 case 136:
  minor = 0;
  rev = (id & AR933X_REV_ID_REVISION_MASK);
  chip = "9330";
  ar71xx_cpu_ops = &ar933x_chip_def;
  ar71xx_soc = AR71XX_SOC_AR9330;
  break;
 case 135:
  minor = 1;
  rev = (id & AR933X_REV_ID_REVISION_MASK);
  chip = "9331";
  ar71xx_soc = AR71XX_SOC_AR9331;
  ar71xx_cpu_ops = &ar933x_chip_def;
  break;

 case 134:
  minor = 0;
  rev = (id & AR934X_REV_ID_REVISION_MASK);
  chip = "9341";
  ar71xx_soc = AR71XX_SOC_AR9341;
  ar71xx_cpu_ops = &ar934x_chip_def;
  break;

 case 133:
  minor = 0;
  rev = (id & AR934X_REV_ID_REVISION_MASK);
  chip = "9342";
  ar71xx_soc = AR71XX_SOC_AR9342;
  ar71xx_cpu_ops = &ar934x_chip_def;
  break;

 case 132:
  minor = 0;
  rev = (id & AR934X_REV_ID_REVISION_MASK);
  chip = "9344";
  ar71xx_soc = AR71XX_SOC_AR9344;
  ar71xx_cpu_ops = &ar934x_chip_def;
  break;

 case 131:
  minor = 0;
  rev = (id & QCA953X_REV_ID_REVISION_MASK);
  chip = "9533";
  ar71xx_soc = AR71XX_SOC_QCA9533;
  ar71xx_cpu_ops = &qca953x_chip_def;
  break;

 case 130:
  minor = 0;
  rev = (id & QCA953X_REV_ID_REVISION_MASK);
  chip = "9533v2";
  ar71xx_soc = AR71XX_SOC_QCA9533_V2;
  ar71xx_cpu_ops = &qca953x_chip_def;
  break;

 case 129:
  minor = 0;
  rev = (id & QCA955X_REV_ID_REVISION_MASK);
  chip = "9556";
  ar71xx_soc = AR71XX_SOC_QCA9556;
  ar71xx_cpu_ops = &qca955x_chip_def;
  break;

 case 128:
  minor = 0;
  rev = (id & QCA955X_REV_ID_REVISION_MASK);
  chip = "9558";
  ar71xx_soc = AR71XX_SOC_QCA9558;
  ar71xx_cpu_ops = &qca955x_chip_def;
  break;

 default:
  panic("ar71xx: unknown chip id:0x%08x\n", id);
 }

 sprintf(ar71xx_sys_type, "Atheros AR%s rev %u", chip, rev);
}
