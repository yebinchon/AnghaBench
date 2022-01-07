
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint32_t ;
typedef void* uint16_t ;
struct uftdi_softc {int sc_devflags; scalar_t__ sc_devtype; } ;
struct uftdi_param_config {int baud_hibits; void* baud_lobits; } ;
typedef int speed_t ;


 int DEVF_BAUDBITS_HINDEX ;
 int DEVF_BAUDCLK_12M ;
 scalar_t__ DEVT_232A ;
 int ERANGE ;
 int uftdi_baud_within_tolerance (int,int) ;

__attribute__((used)) static int
uftdi_encode_baudrate(struct uftdi_softc *sc, speed_t speed,
 struct uftdi_param_config *cfg)
{
 static const uint8_t encoded_fraction[8] = {0, 3, 2, 4, 1, 5, 6, 7};
 static const uint8_t roundoff_232a[16] = {
  0, 1, 0, 1, 0, -1, 2, 1,
  0, -1, -2, -3, 4, 3, 2, 1,
 };
 uint32_t clk, divisor, fastclk_flag, frac, hwspeed;





 if ((sc->sc_devflags & DEVF_BAUDCLK_12M) && speed >= 1200) {
  clk = 12000000;
  fastclk_flag = (1 << 17);
 } else {
  clk = 3000000;
  fastclk_flag = 0;
 }





 if (speed < (clk >> 14) || speed > clk)
  return (ERANGE);
 divisor = (clk << 4) / speed;
 if ((divisor & 0xf) == 1)
  divisor &= 0xfffffff8;
 else if (sc->sc_devtype == DEVT_232A)
  divisor += roundoff_232a[divisor & 0x0f];
 else
  divisor += 1;
 divisor >>= 1;





 hwspeed = (clk << 3) / divisor;
 if (!uftdi_baud_within_tolerance(hwspeed, speed))
  return (ERANGE);
 frac = divisor & 0x07;
 divisor >>= 3;
 if (divisor == 1) {
  if (frac == 0)
   divisor = 0;
  else
   frac = 0;
 }
 divisor |= (encoded_fraction[frac] << 14) | fastclk_flag;

 cfg->baud_lobits = (uint16_t)divisor;
 cfg->baud_hibits = (uint16_t)(divisor >> 16);





 if (sc->sc_devflags & DEVF_BAUDBITS_HINDEX) {
  cfg->baud_hibits <<= 8;
 }

 return (0);
}
