
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef void* u_int ;
struct TYPE_5__ {int eax; int ebx; int ecx; scalar_t__ edx; } ;
struct TYPE_6__ {TYPE_1__ r; } ;
struct apm_softc {TYPE_2__ bios; scalar_t__ active; scalar_t__ minorversion; scalar_t__ majorversion; } ;
struct apm_pwstatus {int ap_batt_time; int ap_batt_life; int ap_batt_stat; int ap_acline; int ap_device; } ;
typedef int aps ;
typedef TYPE_3__* apm_info_t ;
struct TYPE_7__ {int ai_infoversion; int ai_batteries; int ai_capabilities; struct apm_pwstatus* ai_spare; void* ai_status; void* ai_minor; void* ai_major; int ai_batt_time; int ai_batt_life; int ai_batt_stat; int ai_acline; } ;


 int APM_BIOS ;
 int APM_GETCAPABILITIES ;
 int PMDV_ALLDEV ;
 scalar_t__ apm_bioscall () ;
 scalar_t__ apm_get_pwstatus (struct apm_pwstatus*) ;
 struct apm_softc apm_softc ;
 int bzero (struct apm_pwstatus*,int) ;

__attribute__((used)) static int
apm_get_info(apm_info_t aip)
{
 struct apm_softc *sc = &apm_softc;
 struct apm_pwstatus aps;

 bzero(&aps, sizeof(aps));
 aps.ap_device = PMDV_ALLDEV;
 if (apm_get_pwstatus(&aps))
  return 1;

 aip->ai_infoversion = 1;
 aip->ai_acline = aps.ap_acline;
 aip->ai_batt_stat = aps.ap_batt_stat;
 aip->ai_batt_life = aps.ap_batt_life;
 aip->ai_batt_time = aps.ap_batt_time;
 aip->ai_major = (u_int)sc->majorversion;
 aip->ai_minor = (u_int)sc->minorversion;
 aip->ai_status = (u_int)sc->active;

 sc->bios.r.eax = (APM_BIOS << 8) | APM_GETCAPABILITIES;
 sc->bios.r.ebx = 0;
 sc->bios.r.ecx = 0;
 sc->bios.r.edx = 0;
 if (apm_bioscall()) {
  aip->ai_batteries = 0xffffffff;
  aip->ai_capabilities = 0xff00;
 } else {
  aip->ai_batteries = sc->bios.r.ebx & 0xff;
  aip->ai_capabilities = sc->bios.r.ecx & 0xff;
 }

 bzero(aip->ai_spare, sizeof aip->ai_spare);

 return 0;
}
