
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_2__ {int chip_id; } ;
struct bhnd_pmu_softc {TYPE_1__ cid; } ;
 int BHND_PMU_READ_4 (struct bhnd_pmu_softc*,int ) ;
 int BHND_PMU_RES_STATE ;
 int PMURES_BIT (int ) ;
 int RES4319_OTP_PU ;
 int RES4329_OTP_PU ;
 int RES4330_OTP_PU ;
 int RES4336_OTP_PU ;

bool
bhnd_pmu_is_otp_powered(struct bhnd_pmu_softc *sc)
{
 uint32_t otp_res;


 switch (sc->cid.chip_id) {
 case 131:
  otp_res = PMURES_BIT(RES4329_OTP_PU);
  break;
 case 137:
  otp_res = PMURES_BIT(RES4319_OTP_PU);
  break;
 case 129:
  otp_res = PMURES_BIT(RES4336_OTP_PU);
  break;
 case 130:
  otp_res = PMURES_BIT(RES4330_OTP_PU);
  break;




 case 136:
 case 135:
 case 128:
 case 133:
 case 134:
 case 132:
  return (1);

 default:
  return (1);
 }


 if ((BHND_PMU_READ_4(sc, BHND_PMU_RES_STATE) & otp_res) == 0)
  return (0);

 return (1);
}
