
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_12__ {int result; void* ioctl_cmnd; int done; } ;
struct TYPE_11__ {scalar_t__ vbus; } ;
typedef TYPE_1__* PVBUS_EXT ;
typedef int PVBUS ;
typedef TYPE_2__ IOCTL_ARG ;


 int HPT_OSM_TIMEOUT ;
 int PPAUSE ;
 int __hpt_do_tasks (TYPE_1__*) ;
 int hpt_ioctl_done ;
 int hpt_lock_vbus (TYPE_1__*) ;
 scalar_t__ hpt_sleep (TYPE_1__*,TYPE_2__*,int ,char*,int ) ;
 int hpt_unlock_vbus (TYPE_1__*) ;
 int ldm_ioctl (int ,TYPE_2__*) ;
 int ldm_reset_vbus (int ) ;

__attribute__((used)) static void __hpt_do_ioctl(PVBUS_EXT vbus_ext, IOCTL_ARG *ioctl_args)
{
 ioctl_args->result = -1;
 ioctl_args->done = hpt_ioctl_done;
 ioctl_args->ioctl_cmnd = (void *)1;

 hpt_lock_vbus(vbus_ext);
 ldm_ioctl((PVBUS)vbus_ext->vbus, ioctl_args);

 while (ioctl_args->ioctl_cmnd) {
  if (hpt_sleep(vbus_ext, ioctl_args, PPAUSE, "hptctl", HPT_OSM_TIMEOUT)==0)
   break;
  ldm_reset_vbus((PVBUS)vbus_ext->vbus);
  __hpt_do_tasks(vbus_ext);
 }



 hpt_unlock_vbus(vbus_ext);
}
