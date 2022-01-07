
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int32_t ;
struct sc_info {int dev; } ;


 int ENVY24_MT_PSDOUT ;
 int ENVY24_MT_RECORD ;
 int ENVY24_MT_SPDOUT ;
 int ENVY24_ROUTE_CLASS_MIX ;
 int ENVY24_ROUTE_DAC_1 ;
 int ENVY24_ROUTE_DAC_SPDIF ;
 int ENVY24_ROUTE_LEFT ;
 int ENVY24_ROUTE_RIGHT ;
 int device_printf (int ,char*,int,...) ;
 int envy24_rdmt (struct sc_info*,int ,int) ;
 int envy24_wrmt (struct sc_info*,int ,int,int) ;

__attribute__((used)) static int
envy24_route(struct sc_info *sc, int dac, int class, int adc, int rev)
{
 u_int32_t reg, mask;
 u_int32_t left, right;






 if (dac < 0 || ENVY24_ROUTE_DAC_SPDIF < dac)
  return -1;
 if (class == ENVY24_ROUTE_CLASS_MIX &&
     (dac != ENVY24_ROUTE_DAC_1 && dac != ENVY24_ROUTE_DAC_SPDIF))
  return -1;
 if (rev) {
  left = ENVY24_ROUTE_RIGHT;
  right = ENVY24_ROUTE_LEFT;
 }
 else {
  left = ENVY24_ROUTE_LEFT;
  right = ENVY24_ROUTE_RIGHT;
 }

 if (dac == ENVY24_ROUTE_DAC_SPDIF) {
  reg = class | class << 2 |
   ((adc << 1 | left) | left << 3) << 8 |
   ((adc << 1 | right) | right << 3) << 12;



  envy24_wrmt(sc, ENVY24_MT_SPDOUT, reg, 2);
 }
 else {
  mask = ~(0x0303 << dac * 2);
  reg = envy24_rdmt(sc, ENVY24_MT_PSDOUT, 2);
  reg = (reg & mask) | ((class | class << 8) << dac * 2);



  envy24_wrmt(sc, ENVY24_MT_PSDOUT, reg, 2);
  mask = ~(0xff << dac * 8);
  reg = envy24_rdmt(sc, ENVY24_MT_RECORD, 4);
  reg = (reg & mask) |
   (((adc << 1 | left) | left << 3) |
    ((adc << 1 | right) | right << 3) << 4) << dac * 8;



  envy24_wrmt(sc, ENVY24_MT_RECORD, reg, 4);


  envy24_wrmt(sc, ENVY24_MT_RECORD, 0x00, 4);
 }

 return 0;
}
