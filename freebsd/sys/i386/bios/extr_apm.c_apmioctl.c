
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u_long ;
struct thread {int dummy; } ;
struct cdev {int dummy; } ;
struct TYPE_4__ {int eax; int edi; int esi; int edx; int ecx; int ebx; } ;
struct TYPE_5__ {TYPE_1__ r; } ;
struct apm_softc {scalar_t__ initialized; int event_count; int event_ptr; struct apm_event_info* event_list; TYPE_2__ bios; int active; } ;
struct apm_info {int ai_status; int ai_batt_life; int ai_batt_stat; int ai_acline; int ai_minor; int ai_major; } ;
struct apm_event_info {int dummy; } ;
struct apm_bios_arg {int eax; int edi; int esi; int edx; int ecx; int ebx; } ;
typedef scalar_t__ caddr_t ;
typedef int apm_pwstatus_t ;
typedef struct apm_info* apm_info_t ;
typedef TYPE_3__* apm_info_old_t ;
struct TYPE_6__ {int ai_status; int ai_batt_life; int ai_batt_stat; int ai_acline; int ai_minor; int ai_major; } ;


 scalar_t__ APMDEV_CTL ;
 int APM_DPRINT (char*,int) ;
 int APM_NEVENTS ;
 int EAGAIN ;
 int EINVAL ;
 int ENXIO ;
 int EPERM ;
 int FWRITE ;
 int PMST_STANDBY ;
 int PMST_SUSPEND ;
 int apm_bioscall () ;
 int apm_display (int) ;
 int apm_event_disable () ;
 int apm_event_enable () ;
 int apm_get_info (struct apm_info*) ;
 int apm_get_pwstatus (int ) ;
 int apm_halt_cpu () ;
 int apm_lastreq_rejected () ;
 int apm_not_halt_cpu () ;
 struct apm_softc apm_softc ;
 int apm_suspend (int ) ;
 scalar_t__ dev2unit (struct cdev*) ;

__attribute__((used)) static int
apmioctl(struct cdev *dev, u_long cmd, caddr_t addr, int flag, struct thread *td)
{
 struct apm_softc *sc = &apm_softc;
 struct apm_bios_arg *args;
 int error = 0;
 int ret;
 int newstate;

 if (sc == ((void*)0) || sc->initialized == 0)
  return (ENXIO);

 APM_DPRINT("APM ioctl: cmd = 0x%lx\n", cmd);
 switch (cmd) {
 case 128:
  if (!(flag & FWRITE))
   return (EPERM);
  if (sc->active)
   apm_suspend(PMST_SUSPEND);
  else
   error = EINVAL;
  break;

 case 129:
  if (!(flag & FWRITE))
   return (EPERM);
  if (sc->active)
   apm_suspend(PMST_STANDBY);
  else
   error = EINVAL;
  break;

 case 135:
  {
   struct apm_info info;
   apm_info_old_t aiop;

   if (apm_get_info(&info))
    error = ENXIO;
   aiop = (apm_info_old_t)addr;
   aiop->ai_major = info.ai_major;
   aiop->ai_minor = info.ai_minor;
   aiop->ai_acline = info.ai_acline;
   aiop->ai_batt_stat = info.ai_batt_stat;
   aiop->ai_batt_life = info.ai_batt_life;
   aiop->ai_status = info.ai_status;
  }
  break;
 case 136:
  if (apm_get_info((apm_info_t)addr))
   error = ENXIO;
  break;
 case 134:
  if (apm_get_pwstatus((apm_pwstatus_t)addr))
   error = ENXIO;
  break;
 case 137:
  if (!(flag & FWRITE))
   return (EPERM);
  apm_event_enable();
  break;
 case 139:
  if (!(flag & FWRITE))
   return (EPERM);
  apm_event_disable();
  break;
 case 133:
  if (!(flag & FWRITE))
   return (EPERM);
  apm_halt_cpu();
  break;
 case 131:
  if (!(flag & FWRITE))
   return (EPERM);
  apm_not_halt_cpu();
  break;
 case 138:
  if (!(flag & FWRITE))
   return (EPERM);
  newstate = *(int *)addr;
  if (apm_display(newstate))
   error = ENXIO;
  break;
 case 140:
  if (!(flag & FWRITE))
   return (EPERM);

  args = (struct apm_bios_arg *)addr;
  sc->bios.r.eax = args->eax;
  sc->bios.r.ebx = args->ebx;
  sc->bios.r.ecx = args->ecx;
  sc->bios.r.edx = args->edx;
  sc->bios.r.esi = args->esi;
  sc->bios.r.edi = args->edi;
  if ((ret = apm_bioscall())) {






   if (ret == -1) {
    error = EINVAL;
   }
  } else {




   sc->bios.r.eax &= 0xff;
  }
  args->eax = sc->bios.r.eax;
  args->ebx = sc->bios.r.ebx;
  args->ecx = sc->bios.r.ecx;
  args->edx = sc->bios.r.edx;
  args->esi = sc->bios.r.esi;
  args->edi = sc->bios.r.edi;
  break;
 default:
  error = EINVAL;
  break;
 }


 if (dev2unit(dev) == APMDEV_CTL) {
  struct apm_event_info *evp;
  int i;

  error = 0;
  switch (cmd) {
  case 132:
   if (!sc->event_count) {
    error = EAGAIN;
   } else {
    evp = (struct apm_event_info *)addr;
    i = sc->event_ptr + APM_NEVENTS - sc->event_count;
    i %= APM_NEVENTS;
    *evp = sc->event_list[i];
    sc->event_count--;
   }
   break;
  case 130:
   if (apm_lastreq_rejected()) {
    error = EINVAL;
   }
   break;
  default:
   error = EINVAL;
   break;
  }
 }

 return error;
}
