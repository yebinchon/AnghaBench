
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u_long ;
struct thread {int dummy; } ;
struct cdev {int dummy; } ;
struct apm_info {int ai_status; int ai_batt_life; int ai_batt_stat; int ai_acline; int ai_minor; int ai_major; } ;
struct apm_event_info {int type; int index; } ;
struct apm_clone_data {int notify_status; struct acpi_softc* acpi_sc; } ;
struct apm_bios_arg {int dummy; } ;
struct acpi_softc {int acpi_next_sstate; int acpi_standby_sx; int acpi_suspend_sx; } ;
typedef scalar_t__ caddr_t ;
typedef int apm_pwstatus_t ;
typedef struct apm_info* apm_info_t ;
typedef TYPE_1__* apm_info_old_t ;
struct TYPE_2__ {int ai_status; int ai_batt_life; int ai_batt_stat; int ai_acline; int ai_minor; int ai_major; } ;


 int ACPI_LOCK (int ) ;
 int ACPI_STATE_S3 ;
 int ACPI_STATE_S5 ;
 int ACPI_UNLOCK (int ) ;
 int APM_EV_NONE ;
 int APM_EV_NOTIFIED ;
 int EAGAIN ;
 int EINVAL ;
 int ENXIO ;
 int EPERM ;
 int FWRITE ;
 int PMEV_STANDBYREQ ;
 int PMEV_SUSPENDREQ ;
 int acpi ;
 int acpi_AckSleepState (struct apm_clone_data*,int ) ;
 int acpi_ReqSleepState (struct acpi_softc*,int ) ;
 int acpi_capm_get_info (struct apm_info*) ;
 int acpi_capm_get_pwstatus (int ) ;
 int apm_active ;
 int bzero (scalar_t__,int) ;
 int devfs_get_cdevpriv (void**) ;
 int printf (char*,...) ;

__attribute__((used)) static int
apmioctl(struct cdev *dev, u_long cmd, caddr_t addr, int flag, struct thread *td)
{
 int error;
 struct apm_clone_data *clone;
 struct acpi_softc *acpi_sc;
 struct apm_info info;
 struct apm_event_info *ev_info;
 apm_info_old_t aiop;

 error = 0;
 devfs_get_cdevpriv((void **)&clone);
 acpi_sc = clone->acpi_sc;

 switch (cmd) {
 case 128:
  if ((flag & FWRITE) == 0)
   return (EPERM);
  if (acpi_sc->acpi_next_sstate == 0) {
   if (acpi_sc->acpi_suspend_sx != ACPI_STATE_S5) {
    error = acpi_ReqSleepState(acpi_sc,
        acpi_sc->acpi_suspend_sx);
   } else {
    printf(
   "power off via apm suspend not supported\n");
    error = ENXIO;
   }
  } else
   error = acpi_AckSleepState(clone, 0);
  break;
 case 129:
  if ((flag & FWRITE) == 0)
   return (EPERM);
  if (acpi_sc->acpi_next_sstate == 0) {
   if (acpi_sc->acpi_standby_sx != ACPI_STATE_S5) {
    error = acpi_ReqSleepState(acpi_sc,
        acpi_sc->acpi_standby_sx);
   } else {
    printf(
   "power off via apm standby not supported\n");
    error = ENXIO;
   }
  } else
   error = acpi_AckSleepState(clone, 0);
  break;
 case 131:
  printf("apm nextevent start\n");
  ACPI_LOCK(acpi);
  if (acpi_sc->acpi_next_sstate != 0 && clone->notify_status ==
      APM_EV_NONE) {
   ev_info = (struct apm_event_info *)addr;
   if (acpi_sc->acpi_next_sstate <= ACPI_STATE_S3)
    ev_info->type = PMEV_STANDBYREQ;
   else
    ev_info->type = PMEV_SUSPENDREQ;
   ev_info->index = 0;
   clone->notify_status = APM_EV_NOTIFIED;
   printf("apm event returning %d\n", ev_info->type);
  } else
   error = EAGAIN;
  ACPI_UNLOCK(acpi);
  break;
 case 134:
  if (acpi_capm_get_info(&info))
   error = ENXIO;
  aiop = (apm_info_old_t)addr;
  aiop->ai_major = info.ai_major;
  aiop->ai_minor = info.ai_minor;
  aiop->ai_acline = info.ai_acline;
  aiop->ai_batt_stat = info.ai_batt_stat;
  aiop->ai_batt_life = info.ai_batt_life;
  aiop->ai_status = info.ai_status;
  break;
 case 135:
  if (acpi_capm_get_info((apm_info_t)addr))
   error = ENXIO;
  break;
 case 133:
  if (acpi_capm_get_pwstatus((apm_pwstatus_t)addr))
   error = ENXIO;
  break;
 case 136:
  if ((flag & FWRITE) == 0)
   return (EPERM);
  apm_active = 1;
  break;
 case 138:
  if ((flag & FWRITE) == 0)
   return (EPERM);
  apm_active = 0;
  break;
 case 132:
  break;
 case 130:
  break;
 case 137:
  if ((flag & FWRITE) == 0)
   return (EPERM);
  break;
 case 139:
  if ((flag & FWRITE) == 0)
   return (EPERM);
  bzero(addr, sizeof(struct apm_bios_arg));
  break;
 default:
  error = EINVAL;
  break;
 }

 return (error);
}
