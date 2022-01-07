
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct chipc_softc {int core; int dev; } ;
struct chipc_caps {scalar_t__ otp_size; scalar_t__ flash_type; scalar_t__ sprom; } ;
typedef int bhnd_nvram_src ;


 int BHND_NVRAM_SRC_FLASH ;
 int BHND_NVRAM_SRC_OTP ;
 int BHND_NVRAM_SRC_SPROM ;
 int BHND_NVRAM_SRC_UNKNOWN ;
 scalar_t__ CHIPC_FLASH_NONE ;
 int CHIPC_OTPST ;
 int CHIPC_OTPS_GUP_HW ;
 scalar_t__ CHIPC_QUIRK (struct chipc_softc*,int ) ;
 int CHIPC_SPROM_CTRL ;
 int CHIPC_SRC_PRESENT ;
 int OTP_HND ;
 int SUPPORTS_OTP ;
 int SUPPORTS_SPROM ;
 int bhnd_bus_read_4 (int ,int ) ;
 int device_printf (int ,char*) ;

__attribute__((used)) static bhnd_nvram_src
chipc_find_nvram_src(struct chipc_softc *sc, struct chipc_caps *caps)
{
 uint32_t otp_st, srom_ctrl;





 if (CHIPC_QUIRK(sc, SUPPORTS_SPROM) && caps->sprom) {
  srom_ctrl = bhnd_bus_read_4(sc->core, CHIPC_SPROM_CTRL);
  if (srom_ctrl & CHIPC_SRC_PRESENT)
   return (BHND_NVRAM_SRC_SPROM);
 }


 if (CHIPC_QUIRK(sc, SUPPORTS_OTP) && caps->otp_size > 0) {

  if (!CHIPC_QUIRK(sc, OTP_HND)) {
   device_printf(sc->dev,
       "NVRAM unavailable: unsupported OTP controller.\n");
   return (BHND_NVRAM_SRC_UNKNOWN);
  }

  otp_st = bhnd_bus_read_4(sc->core, CHIPC_OTPST);
  if (otp_st & CHIPC_OTPS_GUP_HW)
   return (BHND_NVRAM_SRC_OTP);
 }


 if (caps->flash_type != CHIPC_FLASH_NONE)
  return (BHND_NVRAM_SRC_FLASH);


 return (BHND_NVRAM_SRC_UNKNOWN);
}
